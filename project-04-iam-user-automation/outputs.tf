output "iam_username" {
  value = aws_iam_user.capstone_user.name
}

output "iam_user_arn" {
  value = aws_iam_user.capstone_user.arn
}
