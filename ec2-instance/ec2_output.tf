# output "vm_pip" {
#   value = aws_instance.main[0].public_ip
# }

output "vm_priv_pips" {
  value = [for vm in aws_instance.main : vm.private_ip ]
}