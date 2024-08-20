#!/usr/bin/bash

# Script that creates JSON Schema, ontology, and JSON-LD context files from the
# LinkML definition file ndn.yaml.
#
# To be able to use this script, you need to set up LinkML on your machine,
# preferably in a virtual environment, as detailed here in the following
# tutorial: https://linkml.io/linkml/intro/tutorial01.html
#
# TODO: This file will eventually be removed/replaced/moved somewhere else

gen-owl bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/ontology.ttl
# FIXME: JSON Schema vocabulary needs to be prefixed with ndn:
gen-json-schema bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/ndn.schema.json
gen-jsonld-context --no-metadata bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/context.jsonld
