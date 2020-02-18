String getMonthDetails = """
      query  monthDetails(\$input: monthDetailsInput){
          date
          hired
          identified
          notIdentified
          excess
          waitingIdentification
          }
    """;

String getClients = """
  query clientsByUser(\$userId: ID!){
    clientsByUser(userId: \$userId){
    clients{
      clientId
      name
      logo
    }
    }
  }
 """;
