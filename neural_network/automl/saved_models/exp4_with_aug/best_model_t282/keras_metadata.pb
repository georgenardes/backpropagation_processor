
�uroot"_tf_keras_network*�u{"name": "model_282", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": false, "class_name": "Functional", "config": {"name": "model_282", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_283"}, "name": "input_283", "inbound_nodes": []}, {"class_name": "RandomBrightness", "config": {"name": "random_brightness_282", "trainable": true, "dtype": "float32", "factor": [-0.05969838189585063, 0.05969838189585063], "value_range": [0, 1.0], "seed": null}, "name": "random_brightness_282", "inbound_nodes": [[["input_283", 0, 0, {}]]]}, {"class_name": "RandomFlip", "config": {"name": "random_flip_282", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "name": "random_flip_282", "inbound_nodes": [[["random_brightness_282", 0, 0, {}]]]}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_282", "trainable": true, "dtype": "float32", "height_factor": 0.02995039355797731, "width_factor": 0.02995039355797731, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "name": "random_translation_282", "inbound_nodes": [[["random_flip_282", 0, 0, {}]]]}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_282", "trainable": true, "dtype": "float32", "stddev": 0.008089047350059253, "seed": null}, "name": "gaussian_noise_282", "inbound_nodes": [[["random_translation_282", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_713", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_713", "inbound_nodes": [[["gaussian_noise_282", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_902", "trainable": true, "dtype": "float32", "activation": "linear"}, "name": "activation_902", "inbound_nodes": [[["conv2d_713", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_714", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_714", "inbound_nodes": [[["activation_902", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_903", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_903", "inbound_nodes": [[["conv2d_714", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_715", "trainable": true, "dtype": "float32", "filters": 28, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_715", "inbound_nodes": [[["activation_903", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_904", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_904", "inbound_nodes": [[["conv2d_715", 0, 0, {}]]]}, {"class_name": "DepthwiseConv2D", "config": {"name": "depthwise_conv2d_189", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [16, 16]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "depthwise_constraint": null}, "name": "depthwise_conv2d_189", "inbound_nodes": [[["activation_904", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_905", "trainable": true, "dtype": "float32", "activation": "linear"}, "name": "activation_905", "inbound_nodes": [[["depthwise_conv2d_189", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_282", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_282", "inbound_nodes": [[["activation_905", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_282", "trainable": true, "dtype": "float32", "rate": 0.5415203252587063, "noise_shape": null, "seed": null}, "name": "dropout_282", "inbound_nodes": [[["flatten_282", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_282", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_282", "inbound_nodes": [[["dropout_282", 0, 0, {}]]]}], "input_layers": [["input_283", 0, 0]], "output_layers": [["dense_282", 0, 0]]}, "shared_object_id": 27, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_283"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_283"]}, "keras_version": "2.15.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_282", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_283"}, "name": "input_283", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "RandomBrightness", "config": {"name": "random_brightness_282", "trainable": true, "dtype": "float32", "factor": [-0.05969838189585063, 0.05969838189585063], "value_range": [0, 1.0], "seed": null}, "name": "random_brightness_282", "inbound_nodes": [[["input_283", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "RandomFlip", "config": {"name": "random_flip_282", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "name": "random_flip_282", "inbound_nodes": [[["random_brightness_282", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_282", "trainable": true, "dtype": "float32", "height_factor": 0.02995039355797731, "width_factor": 0.02995039355797731, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "name": "random_translation_282", "inbound_nodes": [[["random_flip_282", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_282", "trainable": true, "dtype": "float32", "stddev": 0.008089047350059253, "seed": null}, "name": "gaussian_noise_282", "inbound_nodes": [[["random_translation_282", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_713", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_713", "inbound_nodes": [[["gaussian_noise_282", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Activation", "config": {"name": "activation_902", "trainable": true, "dtype": "float32", "activation": "linear"}, "name": "activation_902", "inbound_nodes": [[["conv2d_713", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_714", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_714", "inbound_nodes": [[["activation_902", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Activation", "config": {"name": "activation_903", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_903", "inbound_nodes": [[["conv2d_714", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_715", "trainable": true, "dtype": "float32", "filters": 28, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_715", "inbound_nodes": [[["activation_903", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Activation", "config": {"name": "activation_904", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_904", "inbound_nodes": [[["conv2d_715", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "DepthwiseConv2D", "config": {"name": "depthwise_conv2d_189", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [16, 16]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "depthwise_regularizer": null, "depthwise_constraint": null}, "name": "depthwise_conv2d_189", "inbound_nodes": [[["activation_904", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Activation", "config": {"name": "activation_905", "trainable": true, "dtype": "float32", "activation": "linear"}, "name": "activation_905", "inbound_nodes": [[["depthwise_conv2d_189", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Flatten", "config": {"name": "flatten_282", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_282", "inbound_nodes": [[["activation_905", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dropout", "config": {"name": "dropout_282", "trainable": true, "dtype": "float32", "rate": 0.5415203252587063, "noise_shape": null, "seed": null}, "name": "dropout_282", "inbound_nodes": [[["flatten_282", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "dense_282", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_282", "inbound_nodes": [[["dropout_282", 0, 0, {}]]], "shared_object_id": 26}], "input_layers": [["input_283", 0, 0]], "output_layers": [["dense_282", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 29}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Custom>Adam", "config": {"name": "Adam", "weight_decay": null, "clipnorm": null, "global_clipnorm": null, "clipvalue": null, "use_ema": false, "ema_momentum": 0.99, "ema_overwrite_frequency": null, "jit_compile": true, "is_legacy_optimizer": false, "learning_rate": 0.0008581940201111138, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_283", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_283"}}2
�root.layer-1"_tf_keras_layer*�{"name": "random_brightness_282", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "RandomBrightness", "config": {"name": "random_brightness_282", "trainable": true, "dtype": "float32", "factor": [-0.05969838189585063, 0.05969838189585063], "value_range": [0, 1.0], "seed": null}, "inbound_nodes": [[["input_283", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}2
�root.layer-2"_tf_keras_layer*�{"name": "random_flip_282", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "RandomFlip", "config": {"name": "random_flip_282", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "inbound_nodes": [[["random_brightness_282", 0, 0, {}]]], "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}2
�root.layer-3"_tf_keras_layer*�{"name": "random_translation_282", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "RandomTranslation", "config": {"name": "random_translation_282", "trainable": true, "dtype": "float32", "height_factor": 0.02995039355797731, "width_factor": 0.02995039355797731, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "inbound_nodes": [[["random_flip_282", 0, 0, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}2
�root.layer-4"_tf_keras_layer*�{"name": "gaussian_noise_282", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "GaussianNoise", "config": {"name": "gaussian_noise_282", "trainable": true, "dtype": "float32", "stddev": 0.008089047350059253, "seed": null}, "inbound_nodes": [[["random_translation_282", 0, 0, {}]]], "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}2
�
root.layer_with_weights-0"_tf_keras_layer*�
{"name": "conv2d_713", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Conv2D", "config": {"name": "conv2d_713", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["gaussian_noise_282", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}2
�root.layer-6"_tf_keras_layer*�{"name": "activation_902", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Activation", "config": {"name": "activation_902", "trainable": true, "dtype": "float32", "activation": "linear"}, "inbound_nodes": [[["conv2d_713", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 4]}}2
�
root.layer_with_weights-1"_tf_keras_layer*�
{"name": "conv2d_714", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Conv2D", "config": {"name": "conv2d_714", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_902", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 4]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "activation_903", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Activation", "config": {"name": "activation_903", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_714", 0, 0, {}]]], "shared_object_id": 12, "build_input_shape": {"class_name": "TensorShape", "items": [null, 124, 124, 16]}}2
�

root.layer_with_weights-2"_tf_keras_layer*�
{"name": "conv2d_715", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Conv2D", "config": {"name": "conv2d_715", "trainable": true, "dtype": "float32", "filters": 28, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_903", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 124, 124, 16]}}2
�
�
root.layer_with_weights-3"_tf_keras_layer*�
{"name": "depthwise_conv2d_189", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "DepthwiseConv2D", "config": {"name": "depthwise_conv2d_189", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [16, 16]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "depthwise_regularizer": null, "depthwise_constraint": null}, "inbound_nodes": [[["activation_904", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 28}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 117, 117, 28]}}2
�
�
�
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_282", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_282", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_282", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 18928}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 18928]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 36}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 29}2