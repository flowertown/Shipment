package Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/rate/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %EMailRecipients_of :ATTR(:get<EMailRecipients>);
my %Grouping_of :ATTR(:get<Grouping>);

__PACKAGE__->_factory(
    [ qw(        EMailRecipients
        Grouping

    ) ],
    {
        'EMailRecipients' => \%EMailRecipients_of,
        'Grouping' => \%Grouping_of,
    },
    {
        'EMailRecipients' => 'Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailRecipient',
        'Grouping' => 'Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailGroupingType',
    },
    {

        'EMailRecipients' => 'EMailRecipients',
        'Grouping' => 'Grouping',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ShippingDocumentEMailDetail from the namespace http://fedex.com/ws/rate/v9.

Specifies how to e-mail shipping documents.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * EMailRecipients (min/maxOccurs: 0/unbounded)


=item * Grouping (min/maxOccurs: 0/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailDetail
   EMailRecipients =>  { # Shipment::FedEx::WSDL::RateTypes::ShippingDocumentEMailRecipient
     RecipientType => $some_value, # EMailNotificationRecipientType
     Address =>  $some_value, # string
   },
   Grouping => $some_value, # ShippingDocumentEMailGroupingType
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
