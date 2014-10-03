include sample1
hiera_include('classes')






# --------
# Classes definitions

class sample1($message = 'sample1 class default message') {
  notify { $message: }
}

class sample2($message = 'sample2 class default message') {
  notify { $message: }
}
