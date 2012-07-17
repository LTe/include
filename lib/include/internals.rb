require 'dl'
require 'dl/import'
require 'dl/struct'

module RubyInternal
  extend DL::Importer
  dlload

  T_MASK   = 0x1f
  T_MODULE = 0x03

  FL_USHIFT     = 12
  FL_USER0      = 1 << (FL_USHIFT + 0)
  FL_SINGLETON = FL_USER0

  typealias "VALUE", "unsigned long"
  typealias "ID", "unsigned long"

  Basic = [
    "VALUE flags",
    "VALUE klass"
  ]

  RBasic = struct(Basic)

  object_struct = [
      'long numiv',
      'VALUE *ivptr',
      'st_table *iv_index_tbl',
      'VALUE ara[3]'
  ]

  RObject = struct(Basic + object_struct)
end