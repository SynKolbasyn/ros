#include <ros/ros.h>
#include <test_service_client/sum_two_nums.h>
#include <cstdlib>

using ros::init;
using ros::NodeHandle;
using ros::ServiceClient;

using test_service_client::sum_two_nums;

int main(int argc, char** argv) {
  init(argc, argv, "client");

  if (argc != 3) {
    ROS_INFO("usage: client X Y");
    return 1;
  }

  NodeHandle node_handle;
  ServiceClient client = node_handle.serviceClient<sum_two_nums>("sum_two_nums");
  
  sum_two_nums srv;
  srv.request.a = strtold(argv[1], nullptr);
  srv.request.b = strtold(argv[2], nullptr);

  if (client.call(srv)) ROS_INFO("Sum: %Lf", (long double)srv.response.sum);
  else {
    ROS_ERROR("Failed to call service sum_two_nums");
    return 1;
  }

  return 0;
}

