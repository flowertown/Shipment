package Shipment::UPS::WSDL::ShipTypes::AdditionalInfoType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.ups.com/XMLSchema/XOLTWS/Error/v1.1' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Type_of :ATTR(:get<Type>);
my %Value_of :ATTR(:get<Value>);

__PACKAGE__->_factory(
    [ qw(        Type
        Value

    ) ],
    {
        'Type' => \%Type_of,
        'Value' => \%Value_of,
    },
    {
        'Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Value' => 'Shipment::UPS::WSDL::ShipTypes::AdditionalCodeDescType',
    },
    {

        'Type' => 'Type',
        'Value' => 'Value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::ShipTypes::AdditionalInfoType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdditionalInfoType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Error/v1.1.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Type (min/maxOccurs: 1/1)


=item * Value (min/maxOccurs: 1/unbounded)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::ShipTypes::AdditionalInfoType
   Type =>  $some_value, # string
   Value =>  { # Shipment::UPS::WSDL::ShipTypes::AdditionalCodeDescType
     Code =>  $some_value, # string
     Description =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
