INSERT into Pessoa
VALUES ("83456548001", "Vanderlina Vasconcelos Barros"),
       ("57533458249", "Laysa Reis Braga"),
       ("71726222004", "Marlyson Pinho Farias"),
       ("33824667592", "André Marica Wulff"),
       ("75882755700", "Clara Schuenck Brito"),
       ("13797737173", "Nilce Soriano Werneck"),
       ("42504331100", "João Gabriel Campelo Coelho"),
       ("56146283398", "Raimundo de Lima Antunes"),
       ("46447156115", "Luiza Pontes Milanez"),
       ("09691344955", "Pablo Manhães Albuquerque"),
       ("34430159726", "Gustavo Furtunato Elias"),
       ("53651168280", "Andrea Louzano Facre"),
       ("30657209066", "Brunna Gonçalves Matta"),
       ("99025046126", "Elenice Gualberto Fernandes"),
       ("73430056349", "Vera Cormack Nazare"),
       ("33494247242", "Valmir Vitorino Marica"),
       ("14775356160", "Bruno Terra Vasconcelos"),
       ("43207564283", "Luana Alvarenga Pinheiro"),
       ("08356724333", "Orlando Carvalheiro Araujo"),	
       ("45717442181", "Yuri Valente de Rodrigues");

/* UNIQUE constraint failed: Pessoa.CPF  => chave primeria repetida*/

INSERT into ServidorPublico 
VALUES ("83456548001", 17931.00, 643, "Direção", ),
       ("57533458249", 9700.10, 643, "Auxiliar Técnico", ),
       ("71726222004", 15500.00, 883, "Chefia", ),
       ("33824667592", 9640.72, 787, "Auditor Fiscal", ),
       ("75882755700", 7761.85, 807, "Advogado", ),
       ("13797737173", 6787.90, 937, "Assessoramento", ),
       ("42504331100", 10590.21, 937, "Advogado", ),
       ("56146283398", 9646.32, 405, "Técnico e Analista", ),
       ("46447156115", 10900.98, 405, "Direção", ),
       ("09691344955", 5438.90, 405, "Auxiliar Técnico", ),

INSERT into AgentePolitico
VALUES ("34430159726", 13, NULL, NULL, "Presidente da República", ),
       ("53651168280", 18, NULL, NULL,"Governador", ),
       ("30657209066", 30, NULL, NULL, "Prefeito", ),
       ("99025046126", 30, 529, "Senador", ),
       ("73430056349", 30, 883, "Vereador", ),
       ("33494247242", 42, 787, "Vereador", ),
       ("14775356160", 12, 844, "Senador"),
       ("43207564283", 18, 807, "Deputado Federal"),
       ("08356724333", 77, 807, "Deputado Estadual"),	
       ("45717442181", 21, 807, "Deputado Federal");

INSERT into Partido
VALUES (13, "Partido dos Trabalhadores"),
       (65, "Partido dos Animais"),
       (43, "Partido Verde"),
       (80, "Unidade Popular"),
       (42, "Partido dos Desenvolvedores"),
       (21, "Movimento Social Libertador"),
       (30, "Serviço Que Liberta"),
       (12, "Juventude Avante Vai Alcançar"),
       (18, "Progressistas Humanistas Populistas")
       (77, "VBA")

INSERT into Eleicao
VALUES ()

INSERT into CPI
VALUES (41, "Anões do Orçamento"),
       (92, "CPI do Judiciário"),
       (30, "CPI do Banestado"),
       (39, "CPI dos Correios"),
       (66, "CPI dos Bingos"),
       (93, "CPI dos Sanguessugas"),
       (24, "CPI dos Hackers");

INSERT into ProjetoLei
VALUES (3320, 2003),
       (5201, 2012),
       (3232, 2022),
       (8777, 2020),
       (9348, 2015),
       (2611, 1998),
       (1694, 2017),
       (4820, 2013),
       (7207, 2013),
       (8173, 2002);

INSERT into StatusCandidatura
VALUES ()

INSERT into Estado
VALUES ("AM", "Amazonas", "Norte"),
       ("RR", "Roraima", "Norte"),
       ("AP", "Amapá", "Norte"),
       ("PA", "Para", "Norte"),
       ("TO", "Tocantins", "Norte"),
       ("AC", "Acre", "Norte"),
       ("MA", "Maranhão", "Nordeste"),
       ("PI", "Piauí", "Nordeste"),
       ("CE", "Ceará", "Nordeste"),
       ("RN", "Rio Grande do Norte", "Nordeste"),
       ("PE", "Pernanbuco", "Nordeste"),
       ("PB", "Paraíba", "Nordeste"),
       ("SE", "Sergipe", "Nordeste"),
       ("AL", "Alagoas", "Nordeste"),
       ("BA", "Bahia", "Nordeste"),
       ("MT", "Mato Grosso", "Centro-Oeste"),
       ("MS", "Mato Grosso do Sul", "Centro-Oeste"),
       ("GO", "Goiás", "Centro-Oeste"),
       ("SP", "São Paulo", "Sudeste"),
       ("RJ", "Rio de Janeiro", "Sudeste"),
       ("ES", "Espírito Santo", "Sudeste"),
       ("MG", "Minas Gerais", "Sudeste"),
       ("PR", "Paraná", "Sul"),
       ("RS", "Rio Grande do Sul", "Sul"),
       ("SC", "Santa Catarina", "Sul");



INSERT into Secretaria
VALUES (881, "Desenvolvimento Regional e Urbano", 405),
       (367, "Habitação", 405),
       (457, "Proteção e Defesa Civil", 405),
       (479, "Segurança Hídrica", 405),
       (986, "Saneamento", 405),
       (108, "Fomento e Parcerias com o Setor Privado", 405),
       (932, "Secretaria Especial da Receita Federal do Brasil", 807),
       (206, "Secretaria Especial do Comércio Exterior", 807),
       (195, "Secretaria da Educação Superior", 883),
       (458, "Secretaria de Educação Profissional e Tecnológica", 883),
       (448, "Secretaria da Educação Básica", 883),
       (295, "Secretaria de Políticas para Mulheres", 787),
       (615, "Secretaria Especial de Políticas Públicas e Promoção de Igualdade Racial", 787),
       (499, "Secretaria Nacional da Juventude", 787);

/* ministério da cidadania => 
SECRETARIA ESPECIAL DE DESENVOLVIMENTO SOCIALSECRETARIA ESPECIAL DO ESPORTESECRETARIA EXECUTIVASECRETARIA DE AVALIAÇÃO E GESTÃO DA INFORMAÇÃOSECRETARIA DE ARTICULAÇÃO E PARCERIAS */

INSERT into Ministerio
VALUES (101, "Ministério do Desenvolvedor", 0),
       (643, "Ministério do Meio Ambiente", 1),
       (529, "Ministério da Saúde", 1),
       (883, "Ministério da Educação", 1),
       (787, "Ministério dos Direitos Humanos", 1),
       (937, "Ministério da Infraestrutura", 1),
       (874, "Ministério da Arte e Cultura", 0),
       (844, "Ministério do Turismo", 1),
       (967, "Ministério das Relações Exteriores", 1),
       (807, "Ministério da Economia", 1),
       (738, "Ministério da Agricultura", 0),
       (813, "Minitério da Cidadania", 0)
       (455, "Ministério das Comunicações", 0),
       (876, "Ministério da Defesa", 0),
       (405, "Ministério do Desenvolvimento Regional", 1);


INSERT into CargoPolitico
VALUES (10, 30934.70, "Presidente",  1),
       (15, 24341.50, "Vice-Presidente", 1),
       (20, 23048.59, "Governador", 1),
       (25, 21896.27, "Vice-Governador", 1),
       (30, 20562.85, "Prefeito", 1),
       (35, 7529.64, "Vice-Prefeito", 1),
       (40, 25322.25, "Deputado Estadual", 2),
       (50, 33763.00, "Deputado Federal", 2),
       (70, 14346.73, "Vereador", 2),
       (60, 12722.71, "Senador", 2);

INSERT into Governo
VALUES (1735, , ),
       (1181, , ),
       (1272, , ),
       (1673, , ),
       (1121, , ),
       (1225, , ),
       (1252, , ),
       (1361, , ),
       (1689, , ),
       (1502, , );


INSERT into Poder
VALUES (1, "Executivo"),
       (2, "Legislativo"),
       (3, "Judiciário");
       
INSERT into OrcamentoAnual
VALUES (2085, 2002, "Saúde", 529, 203845000000.00, NULL, NULL),
       (4810, 2013, "Educação", 883, 145762000000.00, NULL, NULL),
       (7943, 2013, "Transporte", 937, ),
       (1967, 2015, "Educação", 883, NULL, 448, 5000000.00),
       (3588, 2015, "Transporte", 937),
       (7612, 2015, "Saneamento", 937),
       (5749, 2002, "Educação", 883),
       (6744, 2003, "Cultura", 874),
       (9648, 2003, "Saúde", 529, ),
       (5023, 2012, "Educação", 883);

INSERT into GovernoMinisterio
VALUES ()

INSERT into GovernoSecretaria
VALUES ()

INSERT into GovernoOrcamentoAnual
VALUES ()

INSERT into CandidaturaCPI
VALUES ()

INSERT into CandidaturaProjetoLei
VALUES ()