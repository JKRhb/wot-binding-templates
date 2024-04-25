# TODO: This file will eventually be removed/replaced/moved somewhere else

gen-owl bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/ontology.ttl
# FIXME: JSON Schema vocabulary needs to be prefixed with ndn:
gen-json-schema bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/ndn.schema.json
gen-jsonld-context --no-metadata bindings/protocols/ndn/ndn.yaml > bindings/protocols/ndn/context.jsonld
