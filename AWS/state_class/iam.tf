#we are creatin g resources 

resource "aws_iam_user" "tim" { 
name = "tim" 
path = "/" 

} 

#create group from farukkh note 
resource "aws_iam_group" "developers3" { 
name = "developers3" 
path = "/" 

} 

#adding user a group 
resource "aws_iam_group_membership" "developers_team" { 
name = "developers-group-membership" 
users = [ 
 "${aws_iam_user.tim.name}" 
] 
group = "${aws_iam_group.developers3.name }"

} 