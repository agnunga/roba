<?php
/**
 * Created by IntelliJ IDEA.
 * User: agufed
 * Date: 9/21/17
 * Time: 9:17 PM
 */?>
<section id="contact">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="contact-left wow fadeInLeft">
                <h2>Contact Us</h2>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="contact-right wow fadeInRight">
                        <h2>Message Us</h2>
                        <form action="./mailing/sendEmail.php" class="contact-form">
                            <div class="form-group">
                                <input id="senderNameId"  name="senderName" type="text" class="form-control" placeholder="Name">
                            </div>
                            <input id="messageSubjectId" name="messageSubject" type="hidden" value="Message from Rahisisha ContactUs">
                            <div class="form-group">
                                <input id="senderEmailId"  name="senderEmail" type="email" class="form-control" placeholder="Enter Email">
                            </div>
                            <div class="form-group">
                                <textarea id="messageBodyId" name="messageBody" class="form-control"></textarea>
                            </div>
                            <button id="sendMailId" name="sendMail" type="submit" data-text="SEND" class="button button-default"><span>SUBMIT</span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).on('click', '#sendMailId', function (e) {
            e.preventDefault();
            var senderName = $('#senderNameId').val();
            var messageSubject = $('#messageSubjectId').val();
            var senderEmail = $('#senderEmailId').val();
            var messageBody = $('#messageBodyId').val();

            $.ajax({
                url: "./mailing/sendEmail.php",
                method: "POST",
                data: {senderName: senderName, messageSubject: messageSubject, senderEmail: senderEmail, messageBody: messageBody},
                dataType: "text",
                success: function (data) {
                    alert(data);
                    //                $('#success_alert_message').append(data);
                    //                $('#success_alert_message').removeClass('hidden');
                    //                faddingAllert('#success_alert_message');
                }
            });
        });
    </script>
    <script src="./assets/js/send_mail.js"></script>
</section>

