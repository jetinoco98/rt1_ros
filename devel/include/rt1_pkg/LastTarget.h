// Generated by gencpp from file rt1_pkg/LastTarget.msg
// DO NOT EDIT!


#ifndef RT1_PKG_MESSAGE_LASTTARGET_H
#define RT1_PKG_MESSAGE_LASTTARGET_H

#include <ros/service_traits.h>


#include <rt1_pkg/LastTargetRequest.h>
#include <rt1_pkg/LastTargetResponse.h>


namespace rt1_pkg
{

struct LastTarget
{

typedef LastTargetRequest Request;
typedef LastTargetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LastTarget
} // namespace rt1_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rt1_pkg::LastTarget > {
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::rt1_pkg::LastTarget&) { return value(); }
};

template<>
struct DataType< ::rt1_pkg::LastTarget > {
  static const char* value()
  {
    return "rt1_pkg/LastTarget";
  }

  static const char* value(const ::rt1_pkg::LastTarget&) { return value(); }
};


// service_traits::MD5Sum< ::rt1_pkg::LastTargetRequest> should match
// service_traits::MD5Sum< ::rt1_pkg::LastTarget >
template<>
struct MD5Sum< ::rt1_pkg::LastTargetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rt1_pkg::LastTarget >::value();
  }
  static const char* value(const ::rt1_pkg::LastTargetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt1_pkg::LastTargetRequest> should match
// service_traits::DataType< ::rt1_pkg::LastTarget >
template<>
struct DataType< ::rt1_pkg::LastTargetRequest>
{
  static const char* value()
  {
    return DataType< ::rt1_pkg::LastTarget >::value();
  }
  static const char* value(const ::rt1_pkg::LastTargetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rt1_pkg::LastTargetResponse> should match
// service_traits::MD5Sum< ::rt1_pkg::LastTarget >
template<>
struct MD5Sum< ::rt1_pkg::LastTargetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rt1_pkg::LastTarget >::value();
  }
  static const char* value(const ::rt1_pkg::LastTargetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt1_pkg::LastTargetResponse> should match
// service_traits::DataType< ::rt1_pkg::LastTarget >
template<>
struct DataType< ::rt1_pkg::LastTargetResponse>
{
  static const char* value()
  {
    return DataType< ::rt1_pkg::LastTarget >::value();
  }
  static const char* value(const ::rt1_pkg::LastTargetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RT1_PKG_MESSAGE_LASTTARGET_H
