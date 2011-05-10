package Shipment::Purolator::WSDL::Types::BuyerInformation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://purolator.com/pws/datatypes/v1' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Address_of :ATTR(:get<Address>);
my %TaxNumber_of :ATTR(:get<TaxNumber>);

__PACKAGE__->_factory(
    [ qw(        Address
        TaxNumber

    ) ],
    {
        'Address' => \%Address_of,
        'TaxNumber' => \%TaxNumber_of,
    },
    {
        'Address' => 'Shipment::Purolator::WSDL::Types::Address',
        'TaxNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'Address' => 'Address',
        'TaxNumber' => 'TaxNumber',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::Purolator::WSDL::Types::BuyerInformation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
BuyerInformation from the namespace http://purolator.com/pws/datatypes/v1.

BuyerInformation




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Address (min/maxOccurs: 1/1)


=item * TaxNumber (min/maxOccurs: 0/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::Purolator::WSDL::Types::BuyerInformation
   Address =>  { # Shipment::Purolator::WSDL::Types::Address
     Name =>  $some_value, # string
     Company =>  $some_value, # string
     Department =>  $some_value, # string
     StreetNumber =>  $some_value, # string
     StreetSuffix =>  $some_value, # string
     StreetName =>  $some_value, # string
     StreetType =>  $some_value, # string
     StreetDirection =>  $some_value, # string
     Suite =>  $some_value, # string
     Floor =>  $some_value, # string
     StreetAddress2 =>  $some_value, # string
     StreetAddress3 =>  $some_value, # string
     City =>  $some_value, # string
     Province =>  $some_value, # string
     Country =>  $some_value, # string
     PostalCode =>  $some_value, # string
     PhoneNumber =>  { # Shipment::Purolator::WSDL::Types::PhoneNumber
       CountryCode =>  $some_value, # string
       AreaCode =>  $some_value, # string
       Phone =>  $some_value, # string
       Extension =>  $some_value, # string
     },
     FaxNumber => {}, # Shipment::Purolator::WSDL::Types::PhoneNumber
   },
   TaxNumber =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
