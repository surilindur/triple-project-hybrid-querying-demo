# Hybrid querying demo for Solid pods and SPARQL endpoints

This is a proof-of-concept demo for using the [Comunica](https://github.com/comunica/comunica) query engine
for hybrid query execution that combines data from a Solid pod with that in a SPARQL endpoint.
This proof-of-concept is for the hybrid query engine extension deliverable for the CHIST-ERA TRIPLE project.

The demo combines data from the following sources:

| Source                         | URI                                                                               |
| :----------------------------- | :-------------------------------------------------------------------------------- |
| Solid pod with compound labels | https://triple.ilabt.imec.be/test/bio-usecase/nbn-chist-era-annex-1-chemicals.ttl |
| IDSM SPARQL endpoint           | https://idsm.elixir-czech.cz/sparql/endpoint/idsm                                 |
| ChEBI SPARQL endpoint          | https://idsm.elixir-czech.cz/sparql/endpoint/chebi                                |
<!--| Wikidata SPARQL endpoint       | https://query.wikidata.org/sparql                                                 |-->
| Rhea SPARQL endpoint           | https://sparql.rhea-db.org/sparql                                                 |
| UniProt SPARQL endpoint        | https://sparql.uniprot.org/sparql                                                 |
| OMA SPARQL endpoint            | https://sparql.omabrowser.org/sparql                                              |

The demo makes use of Docker Compose, to provide two containers with the following resources:

* `http://localhost:4000/sparql` as the Comunica SPARQL endpoint that accepts queries.
* `http://localhost:3000/test/nbn-chist-era-annex-1-chemicals` as the original demo data, but hosted locally.
* `http://localhost:3000/test/nbn-chist-era-annex-1-chemicals-custom-predicate` as an alternative demo data with a different predicate.

The combined queries can be found in:

* `queries/combined-service-2-3-autofed.rq` for Solid + IDSM/ChEBI with client-side federation.
* `queries/combined-service-2-3-4-5.rq` for Solid + IDSM/ChEBI + Rhea + Uniprot with SERVICE clauses.
* `queries/combined-service-2-3-4-5-6.rq` for Solid + IDSM/ChEBI + Rhea + Uniprot + OMA with SERVICE clauses (failing at OMA).

## Performance

Performance with SERVICE clauses, combined queries:

* Solid + IDSM/ChEBI: ~9s
* Solid + IDSM/ChEBI + Rhea: ~18s
* Solid + IDSM/ChEBI + Rhea + Uniprot: ~23s

Queries without SERVICE clauses, with all patterns at the top level, keeps executing with no results.

## Running the demo

After cloning, start the containers:

```bash
docker compose up
```

The query can then be executed:

```bash
bash ./query.sh
```

The output bindings will be written into `query.json`.

## Issues

Please feel free to report any issues on the GitHub issue tracker.

## License

This code is copyrighted and released under the [MIT license](http://opensource.org/licenses/MIT).
