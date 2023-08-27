# Create three templates
template1 = Template.create!(
  name: 'General business template',
  template_name: 'standard_email',
  body: 'General update')

template2 = Template.create!(
  name: 'New product release',
  template_name: 'product_email',
  body: 'New features')

template3 = Template.create!(
  name: 'Monthly newsletter',
  template_name: 'newsletter_email',
  body: 'Monthly newsletter')

  email1 = Email.create!(
    subject: "New CEO joins <email company>",
    template_id: 1,
    body: "To Whom It May Concern,\n\nI am writing to introduce our new CEO, [CEO's name]. [He/She] joins us with a wealth of experience in the tech industry, having held senior leadership positions at several leading companies.\n\n[CEO's name] is a visionary leader with a proven track record of success. [He/She] is passionate about building great products and teams, and [he/she] is committed to leading our company to continued growth and innovation.\n\nI am confident that [CEO's name] will be a great asset to our company. I encourage you to reach out to [him/her] and introduce yourself.\n\nSincerely,\n[Your name]\n\nHere are some tips for writing a short and concise letter to introduce a new CEO:\n\nStart by introducing yourself and your role in the company.\nBriefly explain the new CEO's background and experience.\nHighlight the new CEO's strengths and accomplishments.\nExpress your confidence in the new CEO's ability to lead the company.\nEncourage people to reach out to the new CEO and introduce themselves.\n"
  )
  
  
  email2 = Email.create!(
    subject: "Product release 4.9.0",
    template_id: 2,
    body: "\nI am writing to announce the release of our major product update, version 4.9.0. This release includes a number of new features and improvements, including:\n\nA new user interface that is more intuitive and easy to use.\nImproved performance and stability.\nA number of new features that make our product more powerful and versatile.\nWe are confident that this release will be a valuable asset to our customers. We encourage you to download the update and experience the new features for yourself.\n\nThank you for your continued support.\n\nSincerely,\n[Your name]"
  )
  
  email3 = Email.create!(
    subject: "August newsletter",
    template_id: 3,
    body: "Company News and Updates\n\nNew Product Features: We are excited to announce the launch of new features for our product, [product name]. These new features include:\nA more intuitive user interface\nImproved performance and stability\nA number of new features that make our product more powerful and versatile\nWe believe that these new features will make [product name] even more valuable to our customers.\n\nNew Brand: We are also excited to announce the launch of our new brand. Our new brand reflects our commitment to innovation and our focus on providing our customers with the best possible products and services.\nWe believe that our new brand will help us to better connect with our customers and to achieve our goals for growth and success.\n\nMoving Offshore: We are also pleased to announce that we are moving some of our operations offshore. This move will allow us to reduce our costs and to better serve our global customers.\nWe believe that this move is a positive step for our company, and we are confident that it will help us to achieve our goals for growth and profitability.\n\nWe hope you enjoyed this update on our company news and updates. If you have any questions, please do not hesitate to contact us.\n\nThank you for your continued support!"
  )