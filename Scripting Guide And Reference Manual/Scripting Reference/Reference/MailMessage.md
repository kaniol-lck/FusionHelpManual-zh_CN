#### MailMessage

###### 类 MailMessage

父类：`Object`

表示一条电子邮箱消息。

请注意，如果没有通过`SetServer`、`SetLogin`和`SetPassword`方法设置显式服务器设置，则使用默认的偏好设置（Globals -> Network -> Server Settings ...）。

如果未设置，则尝试连接收件人服务器。

- <b>Python用法</b>：

  ```python
  mail = fusion.CreateMail()
  
  mail.AddRecipients("vfx@studio.com, myself@studio.com")
  mail.SetSubject("Render Completed")
  mail.SetBody("The job completed.")
  
  print(mail.SendTable())
  status = mail.SendTable().values()
  print (status[0]) # 成功布尔值
  if len(status) > 1:
  	print(status[1]) # 错误消息
  ```

- <b>Lua用法</b>：

  ```lua
  mail = fusion:CreateMail()
  
  mail:AddRecipients("vfx@studio.com, myself@studio.com")
  mail:SetSubject("Render Completed")
  mail:SetBody("The job completed.")
  
  ok, errmsg = mail:Send()
  print(ok)
  print(errmsg)
  ```

##### 方法

###### MailMessage.AddAttachment(*filename*)

添加到正文的附件文件名。

- <b>参数</b>：
  `filename` （***字符串***） – filename
- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### MailMessage.AddRecipients(*addresses*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将收件人添加到“收件人：”列表中。

- <b>参数</b>：
  `addresses` （***字符串***） – addresses

###### MailMessage.AddRecipients(*addresses*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

将收件人添加到“收件人：”列表中。

- <b>参数</b>：
  `addresses` （*表*） – addresses

###### MailMessage.GetTable()

以表的形式返回消息。

- <b>返回</b>：msg
- <b>返回类型</b>：表

###### MailMessage.RemoveAllAttachments()

从邮件中删除所有附件。

###### MailMessage.RemoveAllRecipients()

从“收件人：”字段中删除所有收件人。

###### MailMessage.Send()

发送消息。

返回以布尔的形式的成功和本信息。

请注意，Python应使用`SendTable`方法。

- <b>返回</b>：success
- <b>返回类型</b>：布尔

###### MailMessage.SetBody(*bodytext*)

设置消息正文。

- <b>参数</b>：
  `bodytext` （***字符串***） – bodytext

###### MailMessage.SetHTMLBody(*bodyhtml*)

使用HTML设置消息正文。

- <b>参数</b>：
  `bodyhtml` （***字符串***） – bodyhtml

###### MailMessage.SetLogin(*login*)

设置用于身份验证的登录名。

- <b>参数</b>：
  `login` （***字符串***） – login

###### MailMessage.SetPassword(*password*)

设置用于身份验证的密码。

- <b>参数</b>：
  `password` （***字符串***） – password

###### MailMessage.SetSender(*sender*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

- <b>参数</b>：
  `sender` （***字符串***） – sender

###### MailMessage.SetSender(*sender*)

**注意：**此方法被重载，并具有其他参数。另见其他定义。

- <b>参数</b>：
  `sender` （*表*） – sender

###### MailMessage.SetServer(*servername*)

设置要使用的外发邮件服务器。

- <b>参数</b>：
  `servername` （***字符串***） – servername

###### MailMessage.SetSubject(*subject*)

设置”主题：“字段。

- <b>参数</b>：
  `subject` （***字符串***） – subject

