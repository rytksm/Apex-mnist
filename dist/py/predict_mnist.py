#!/usr/bin/env python

from __future__ import print_function 

try:
    import matplotlib
    matplotlib.use('Agg')
except ImportError:
    pass

import argparse

import chainer
import chainer.functions as F
import chainer.links as L
from chainer import training
from chainer.training import extensions
import numpy as np
from PIL import Image, ImageOps



# Network definition
class MLP(chainer.Chain):

    def __init__(self, n_units, n_out):
        super(MLP, self).__init__()
        with self.init_scope():
            # the size of the inputs to each layer will be inferred
            self.l1 = L.Linear(None, n_units)  # n_in -> n_units
            self.l2 = L.Linear(None, n_units)  # n_units -> n_units
            self.l3 = L.Linear(None, n_out)  # n_units -> n_out

    def __call__(self, x):
        h1 = F.relu(self.l1(x))
        h2 = F.relu(self.l2(h1))
        return self.l3(h2)

def loadPredImg(path):
    # read image file and resize 28*28 grayscale
    img = Image.open(path)
    img = img.resize((28,28))
    img = ImageOps.invert(img)
    img = img.convert('L')
    #img.save('pred.jpg','JPEG', quality=100, optimize=True)
    img = np.asarray(img).reshape( 1, 28, 28)
    # flatten
    #img = img.reshape(len(img), 784)
    img = img.reshape(784)
    # normalize
    img = img.astype(np.float32) / 255.0
    # label
    lbl = np.array(-1)
    
    return img, lbl
    
def main():
    parser = argparse.ArgumentParser(description='Chainer example: MNIST')
    parser.add_argument('--unit', '-u', type=int, default=1000,
                        help='Number of units')
    parser.add_argument('--image', '-i', type=str, default='',
                        help='Image for prediction.')
    parser.add_argument('--model', '-m', type=str, default='',
                        help='Model made by train_mnist.py')
    args = parser.parse_args()

    print('# unit: {}'.format(args.unit))
    print('image file: ', args.image)
    print('model file: ', args.model)
    print('')

    # Set up a neural network
    model = L.Classifier(MLP(args.unit, 10))

    # Load the MNIST dataset
    train, test = chainer.datasets.get_mnist()

    mdl = 'my_mnist.model'
    if len(args.model) > 0:
        mdl = args.model
    chainer.serializers.load_npz(mdl, model)

    x, t = test[2]
    if len(args.image) > 0:
        x, t = loadPredImg(args.image)

    #print(x.shape)
    #print(t.shape)
    #print('label:', t)

    x = x[None, ...]
    y = model.predictor(x)
    y = y.data

    print('predicted_label:', y.argmax(axis=1)[0])

if __name__ == '__main__':
    main()

