<?php

require 'PHPMailerAutoload.php';

$mail = new PHPMailer;

//$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
$mail->isSMTP();                                     // Set mailer to use SMTP
//$mail->isMail(); //isMail                                     // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'yolojeya@gmail.com';                 // SMTP username
$mail->Password = 'pzpoaarxutxasluw';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587; //465; 
//                                   // TCP port to connect to
$mailFrom = $_POST['senderEmail'];
$mailFromName = $_POST['senderName'];
$mailSubject = $_POST['messageSubject'];
$mailBody = $_POST['messageBody'];
$mailAltBody = $_POST['messageBody'];

$mail->setFrom('yolojeya@gmail.com', $mailFromName);
$mail->addAddress('agunga3d@gmail.com', 'Godfrey Agunga');     // Add a recipient
$mail->addAddress('info@rahisisha.co.ke');               // Name is optional
$mail->addReplyTo($mailFrom, $mailFromName);
//$mail->addCC('simiyudan@gmail.com');
//$mail->addBCC('ondiekistephen5@gmail.com');
//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
$mail->isHTML(true);                                  // Set email format to HTML

$mail->Subject = $mailSubject;
$mail->Body = $mailBody;
$mail->AltBody = $mailAltBody;

if (!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
}

