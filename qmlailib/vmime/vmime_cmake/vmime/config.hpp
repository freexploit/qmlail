#ifndef VMIME_CONFIG_HPP_INCLUDED
#define VMIME_CONFIG_HPP_INCLUDED

#define VMIME_PACKAGE "libvmime"

#define VMIME_VERSION ""
#define VMIME_API ""

#define VMIME_TARGET_ARCH "i686"
#define VMIME_TARGET_OS "Linux"

#define VMIME_DEBUG 1

#define VMIME_BYTE_ORDER_BIG_ENDIAN    1
#define VMIME_BYTE_ORDER_LITTLE_ENDIAN 0



// Generic types
// -- 8-bit
typedef signed char vmime_int8;
typedef unsigned char vmime_uint8;
//config_hpp.write('// -- 16-bit\n')
//config_hpp.write('typedef signed ' + env['pf_16bit_type'] + ' vmime_int16;\n')
//config_hpp.write('typedef unsigned ' + env['pf_16bit_type'] + ' vmime_uint16;\n')
//config_hpp.write('// -- 32-bit\n')
typedef signed int vmime_int32;
typedef unsigned int vmime_uint32;
//config_hpp.write('\n')


#define VMIME_HAVE_FILESYSTEM_FEATURES 1

#define VMIME_HAVE_SASL_SUPPORT 1

#define VMIME_HAVE_TLS_SUPPORT 1
#define HAVE_GNUTLS_PRIORITY_FUNCS 1

#define VMIME_HAVE_MESSAGING_FEATURES 1

// Additional defines
#define VMIME_HAVE_GETADDRINFO 1
#define VMIME_HAVE_PTHREAD 1


#endif // VMIME_CONFIG_HPP_INCLUDED
