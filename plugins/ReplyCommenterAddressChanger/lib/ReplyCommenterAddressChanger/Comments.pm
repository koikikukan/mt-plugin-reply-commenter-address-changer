package ReplyCommenterAddressChanger::Comments;

use strict;

sub change_email_address {
    my $cb = shift;
    my ($app, $comment, $commenter) = @_;

    my $plugin = MT->component("ReplyCommenterAddressChanger");
    my $address = $plugin->get_config_value('mail_address', 'blog:'.$app->blog->id);
    $comment->email($address) if $address;
}

1;
