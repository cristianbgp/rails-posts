Comment.delete_all
Like.delete_all
Medium.delete_all
Post.delete_all
User.delete_all

johnuser = User.create(
  first_name: 'John',
  last_name: 'Something',
  birthday: '02-08-2018',
  private_email: true,
  email: 'john@email.com'
)

oscaruser = User.create(
  first_name: 'Oscar',
  last_name: 'Something',
  birthday: '02-08-1992',
  private_email: true,
  email: 'oscar@email.com'
)

jennuser = User.create(
  first_name: 'Jenn',
  last_name: 'Something',
  birthday: '07-12-1994',
  private_email: true,
  email: 'jenn@email.com'
)

oscaruser.follow(johnuser)
jennuser.follow(johnuser)
jennuser.follow(oscaruser)

johnmedium1 = Medium.create(name: 'image.jpg')
johnpost1 = johnuser.publish('my first post', johnmedium1)
oscaruser.like(johnpost1)
jennuser.like(johnpost1)
oscaruser.comment('🤔', johnpost1)


johnmedium2 = Medium.create(name: 'video.mp4')
johnpost2 = johnuser.publish('my second post', johnmedium2)
oscaruser.like(johnpost2)
oscaruser.comment('🤭', johnpost2)

oscarmedium1 = Medium.create(name: 'image1.jpg')
oscarmedium2 = Medium.create(name: 'image2.jpg')
oscarpost1 = oscaruser.publish('my first post', oscarmedium1, oscarmedium2)
johnuser.like(oscarpost1)