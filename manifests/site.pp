node default {
  include sample
}

class sample($message = 'sample class default message') {
  notify { $message: }
}
