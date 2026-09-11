CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    fonte VARCHAR(100) NOT NULL,
    secao VARCHAR(150),
    produto TEXT,
    modelo TEXT,
    cor TEXT,
    tamanho TEXT,
    quantidade INTEGER,
    unidade VARCHAR(10),
    tecido_composicao TEXT,
    item TEXT,
    medida TEXT,
    observacoes TEXT
);

INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (1, 'VARIADOS', 'Protetor de sofá', 'Protetor de Sofá Matelado', '2x3 / (Mesaque)', 'Bege', '-', 7, 'un', NULL, '<bound method IndexOpsMixin.item of id                                           1
fonte                                 VARIADOS
secao                         Protetor de sofá
produto              Protetor de Sofá Matelado
modelo                         2x3 / (Mesaque)
cor                                       Bege
tamanho                                      -
quantidade                                 7.0
unidade                                     un
tecido_composicao                             
item                                          
medida                                        
observacoes                                   
Name: 0, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (2, 'VARIADOS', 'Protetor de sofá', 'Protetor de Sofá Matelado', '2x3 / (Mesaque)', 'Tabaco', '-', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                           2
fonte                                 VARIADOS
secao                         Protetor de sofá
produto              Protetor de Sofá Matelado
modelo                         2x3 / (Mesaque)
cor                                     Tabaco
tamanho                                      -
quantidade                                 2.0
unidade                                     un
tecido_composicao                             
item                                          
medida                                        
observacoes                                   
Name: 1, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (3, 'VARIADOS', 'Protetor de sofá', 'Protetor de Sofá Matelado', '2x3 / (Mesaque)', 'Cinza', '-', 5, 'un', NULL, '<bound method IndexOpsMixin.item of id                                           3
fonte                                 VARIADOS
secao                         Protetor de sofá
produto              Protetor de Sofá Matelado
modelo                         2x3 / (Mesaque)
cor                                      Cinza
tamanho                                      -
quantidade                                 5.0
unidade                                     un
tecido_composicao                             
item                                          
medida                                        
observacoes                                   
Name: 2, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (4, 'VARIADOS', 'Protetor de sofá', 'Protetor de Sofá Matelado', '2x3 / (Mesaque)', 'Preto', '-', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                           4
fonte                                 VARIADOS
secao                         Protetor de sofá
produto              Protetor de Sofá Matelado
modelo                         2x3 / (Mesaque)
cor                                      Preto
tamanho                                      -
quantidade                                 2.0
unidade                                     un
tecido_composicao                             
item                                          
medida                                        
observacoes                                   
Name: 3, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (5, 'VARIADOS', 'Protetor de sofá', 'Capa de Sofá Matelado / Duplaface', '-', 'Tabaco / Caqui', 'P/ MEDIR', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   5
fonte                                         VARIADOS
secao                                 Protetor de sofá
produto              Capa de Sofá Matelado / Duplaface
modelo                                               -
cor                                     Tabaco / Caqui
tamanho                                       P/ MEDIR
quantidade                                         1.0
unidade                                             un
tecido_composicao                                     
item                                                  
medida                                                
observacoes                                           
Name: 4, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (6, 'VARIADOS', 'Protetor de sofá', 'Capa de Sofá Matelado / / 100% Poliéster', '2x3', 'Cinza', '2L - 0,98x1,80 / 3L - 1,32x1,80', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                          6
fonte                                                VARIADOS
secao                                        Protetor de sofá
produto              Capa de Sofá Matelado / / 100% Poliéster
modelo                                                    2x3
cor                                                     Cinza
tamanho                       2L - 0,98x1,80 / 3L - 1,32x1,80
quantidade                                                1.0
unidade                                                    un
tecido_composicao                                            
item                                                         
medida                                                       
observacoes                                                  
Name: 5, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (7, 'VARIADOS', 'Protetor de sofá', 'Protetor de Sofá / Microfibra / 100% Poliéster / Enchimento 100% Poliéster', '4 lugares / Dupla face / Matelado', 'Cinza / Preto', '-', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                   7
fonte                                                         VARIADOS
secao                                                 Protetor de sofá
produto              Protetor de Sofá / Microfibra / 100% Poliéster...
modelo                               4 lugares / Dupla face / Matelado
cor                                                      Cinza / Preto
tamanho                                                              -
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 6, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (8, 'VARIADOS', 'Protetor de sofá', 'Protetro de sofá / 100% poliéster / Enchimento 100% Poliéster / Enchimento / 100%polipropileno', '4 lugares / impermeável / Dupla face / Matelado', 'Cinza / Preto', '-', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                   8
fonte                                                         VARIADOS
secao                                                 Protetor de sofá
produto              Protetro de sofá / 100% poliéster / Enchimento...
modelo                 4 lugares / impermeável / Dupla face / Matelado
cor                                                      Cinza / Preto
tamanho                                                              -
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 7, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (9, 'VARIADOS', 'Protetor de sofá', 'Kit Protetor de Sofá / 100% Poliéster / Enchimento 100% Poliéster / 100% polipropileno', 'Matelado / Matelado / Ultrassônico', '-', '2 lugares 1,90 x 95 cm', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                   9
fonte                                                         VARIADOS
secao                                                 Protetor de sofá
produto              Kit Protetor de Sofá / 100% Poliéster / Enchim...
modelo                              Matelado / Matelado / Ultrassônico
cor                                                                  -
tamanho                                         2 lugares 1,90 x 95 cm
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes          3 lugares 1,90 x 1,45 cm Braços embutidos / 70...
Name: 8, dtype: object>', NULL, '3 lugares 1,90 x 1,45 cm Braços embutidos / 70 x 40 cm');
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (10, 'VARIADOS', 'Protetor de sofá', 'Capa protetora de Sofá / 100% poliéster / Enchimento 100% poliéster', 'Matelada / Ultrassônica', 'Vermelho', '1 lugar', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  10
fonte                                                         VARIADOS
secao                                                 Protetor de sofá
produto              Capa protetora de Sofá / 100% poliéster / Ench...
modelo                                         Matelada / Ultrassônica
cor                                                           Vermelho
tamanho                                                        1 lugar
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 9, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (11, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Preto', 'King', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                                                  11
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Preto
tamanho                                                           King
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                    -
item                                                                  
medida                                                               -
observacoes                                                           
Name: 10, dtype: object>', '-', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (12, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Cinza', 'King', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  12
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Cinza
tamanho                                                           King
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 11, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (13, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Avelã', 'King', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  13
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Avelã
tamanho                                                           King
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 12, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (14, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Tabaco', 'Queen', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  14
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                             Tabaco
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 13, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (15, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Avelã', 'Queen', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  15
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Avelã
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 14, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (16, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Palha', 'Queen', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  16
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Palha
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 15, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (17, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Cinza', 'Casal', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  17
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                              Cinza
tamanho                                                          Casal
quantidade                                                         2.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 16, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (18, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Branco', 'Casal', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  18
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                             Branco
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 17, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (19, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado', NULL, 'Tabaco', 'Casal', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  19
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                            Protetor de colchão / Imp. Matelado
modelo                                                                
cor                                                             Tabaco
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 18, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (20, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado / Ultrassônico c/ elástico', NULL, 'Preto', 'Solteiro', 1, 'un', 'Superfície: 100%polipropileno / Base: 100% Polietileno / Lateral: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  20
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto              Protetor de colchão / Imp. Matelado / Ultrassô...
modelo                                                                
cor                                                              Preto
tamanho                                                       Solteiro
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Superfície: 100%polipropileno / Base: 100% Pol...
item                                                                  
medida                                              1,88 x 0,88 x 0,50
observacoes                                                           
Name: 19, dtype: object>', '1,88 x 0,88 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (21, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor de colchão / Imp. Matelado / Ultrassônico c/ elástico', NULL, 'Preto', 'Queen', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  21
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto              Protetor de colchão / Imp. Matelado / Ultrassô...
modelo                                                                
cor                                                              Preto
tamanho                                                          Queen
quantidade                                                         2.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                              1,58 x 1,98 x 0,50
observacoes                                                           
Name: 20, dtype: object>', '1,58 x 1,98 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (22, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor Colchão M U / Imp.', NULL, 'Branco', 'Queen', 1, 'un', 'Superfície: 100%polipropileno / Base: 100% Polietileno / Lateral: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  22
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                    Protetor Colchão M U / Imp.
modelo                                                                
cor                                                             Branco
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Superfície: 100%polipropileno / Base: 100% Pol...
item                                                                  
medida                                              1,58 x 1,98 x 0,40
observacoes                                                           
Name: 21, dtype: object>', '1,58 x 1,98 x 0,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (23, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Protetor Imp. Padrão', NULL, 'Branco', 'Casal', 1, 'un', 'Malha 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  23
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                           Protetor Imp. Padrão
modelo                                                                
cor                                                             Branco
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                 Malha 100% Poliéster
item                                                                  
medida                                                     1,90 x 1,40
observacoes                                                           
Name: 22, dtype: object>', '1,90 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (24, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Capa de Travesseiro Imp.', NULL, 'Cinza', '70x50', 5, 'un', '-', '<bound method IndexOpsMixin.item of id                                                                  24
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                       Capa de Travesseiro Imp.
modelo                                                                
cor                                                              Cinza
tamanho                                                          70x50
quantidade                                                         5.0
unidade                                                             un
tecido_composicao                                                    -
item                                                                  
medida                                                                
observacoes                                                           
Name: 23, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (25, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Capa de Travesseiro Imp.', NULL, 'Branco', NULL, 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  25
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                       Capa de Travesseiro Imp.
modelo                                                                
cor                                                             Branco
tamanho                                                               
quantidade                                                         2.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 24, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (26, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Capa de Travesseiro Imp.', NULL, 'Tabaco', NULL, 4, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  26
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                       Capa de Travesseiro Imp.
modelo                                                                
cor                                                             Tabaco
tamanho                                                               
quantidade                                                         4.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 25, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (27, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Capa de Travesseiro Imp.', NULL, 'Avelã', NULL, 10, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  27
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                       Capa de Travesseiro Imp.
modelo                                                                
cor                                                              Avelã
tamanho                                                               
quantidade                                                        10.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 26, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (28, 'VARIADOS', 'Linha Impermeável Matelada - Protetor de colchão e capa de travesseiro', 'Capa de Travesseiro Imp.', NULL, 'Palha', NULL, 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  28
fonte                                                         VARIADOS
secao                Linha Impermeável Matelada - Protetor de colch...
produto                                       Capa de Travesseiro Imp.
modelo                                                                
cor                                                              Palha
tamanho                                                               
quantidade                                                         2.0
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 27, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (29, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor Colchão M U / NÃO Imp.', NULL, 'Branco', 'Queen', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  29
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto                                Protetor Colchão M U / NÃO Imp.
modelo                                                                
cor                                                             Branco
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                              1,58 x 1,98 x 0,40
observacoes                                                           
Name: 28, dtype: object>', '1,58 x 1,98 x 0,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (30, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado Ultrassônico', NULL, 'Preto', 'Casal', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  30
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto              Protetor de colchão / NÃO Imp. / Matelado Ultr...
modelo                                                                
cor                                                              Preto
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                              1,58 x 1,98 x 0,50
observacoes                                                           
Name: 29, dtype: object>', '1,58 x 1,98 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (31, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado Ultrassônico', NULL, 'Preto', 'Solteiro', 2, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  31
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto              Protetor de colchão / NÃO Imp. / Matelado Ultr...
modelo                                                                
cor                                                              Preto
tamanho                                                       Solteiro
quantidade                                                         2.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                              1,88 x 0,88 x 0,50
observacoes                                                           
Name: 30, dtype: object>', '1,88 x 0,88 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (32, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado Ultrassônico', NULL, 'Branco', 'Solteiro 3G', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  32
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto              Protetor de colchão / NÃO Imp. / Matelado Ultr...
modelo                                                                
cor                                                             Branco
tamanho                                                    Solteiro 3G
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                              1,88 x 0,88 x 0,50
observacoes                                                           
Name: 31, dtype: object>', '1,88 x 0,88 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (33, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado Ultrassônico', NULL, 'Cinza', 'Queen', 5, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  33
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto              Protetor de colchão / NÃO Imp. / Matelado Ultr...
modelo                                                                
cor                                                              Cinza
tamanho                                                          Queen
quantidade                                                         5.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                              1,58 x 1,98 x 0,50
observacoes                                                           
Name: 32, dtype: object>', '1,58 x 1,98 x 0,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (34, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado Ultrassônico', NULL, 'Pink', 'Queen', 1, 'un', 'Superfície: 100% Poliéster / Base: 100% polipropileno / Enchimentol: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                  34
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto              Protetor de colchão / NÃO Imp. / Matelado Ultr...
modelo                                                                
cor                                                               Pink
tamanho                                                          Queen
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Superfície: 100% Poliéster / Base: 100% polipr...
item                                                                  
medida                                              1,58 x 1,98 x 0,40
observacoes                                                           
Name: 33, dtype: object>', '1,58 x 1,98 x 0,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (35, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado U', NULL, 'Vermelho', 'Casal', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                                                  35
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto                    Protetor de colchão / NÃO Imp. / Matelado U
modelo                                                                
cor                                                           Vermelho
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                    -
item                                                                  
medida                                                               -
observacoes                                                           
Name: 34, dtype: object>', '-', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (36, 'VARIADOS', 'Protetor de colchão e capa de travesseiro - Não impermeável', 'Protetor de colchão / NÃO Imp. / Matelado U', NULL, 'Cinza', 'Casal', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                                                  36
fonte                                                         VARIADOS
secao                Protetor de colchão e capa de travesseiro - Nã...
produto                    Protetor de colchão / NÃO Imp. / Matelado U
modelo                                                                
cor                                                              Cinza
tamanho                                                          Casal
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                                    -
item                                                                  
medida                                                               -
observacoes                                                           
Name: 35, dtype: object>', '-', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (37, 'VARIADOS', 'Capa para colchão', 'Soft com zíper / Padrão - 100% Poliéster / Microfibra - 150 fios', NULL, NULL, 'Casal', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                  37
fonte                                                         VARIADOS
secao                                                Capa para colchão
produto              Soft com zíper / Padrão - 100% Poliéster / Mic...
modelo                                                                
cor                                                                   
tamanho                                                          Casal
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                              1,38 x 1,88 x 0,20
observacoes                                                           
Name: 36, dtype: object>', '1,38 x 1,88 x 0,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (38, 'VARIADOS', 'Capa para colchão', 'Malha / 100% algodão', NULL, NULL, 'Casal', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                     38
fonte                            VARIADOS
secao                   Capa para colchão
produto              Malha / 100% algodão
modelo                                   
cor                                      
tamanho                             Casal
quantidade                            NaN
unidade                                un
tecido_composicao                        
item                                     
medida                 1,38 x 1,88 x 0,20
observacoes                              
Name: 38, dtype: object>', '1,38 x 1,88 x 0,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (39, 'VARIADOS', 'Capa para colchão', 'Malha Helanca / 100% Poliéster / c/ zíper', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                          39
fonte                                                 VARIADOS
secao                                        Capa para colchão
produto              Malha Helanca / 100% Poliéster / c/ zíper
modelo                                                        
cor                                                           
tamanho                                               Solteiro
quantidade                                                 NaN
unidade                                                     un
tecido_composicao                                             
item                                                          
medida                                      0,88 x 1,88 x 0,25
observacoes                                                   
Name: 39, dtype: object>', '0,88 x 1,88 x 0,25', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (40, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Tabaco', 'Kit 6 lugares', 7, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   40
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                              Tabaco
tamanho                                   Kit 6 lugares
quantidade                                          7.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 40, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (41, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Tabaco', 'Kit 4 lugares', 2, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   41
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                              Tabaco
tamanho                                   Kit 4 lugares
quantidade                                          2.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 41, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (42, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Avelã', 'Kit 6 lugares', 2, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   42
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Avelã
tamanho                                   Kit 6 lugares
quantidade                                          2.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 42, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (43, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Avelã', 'Kit 4 lugares', 7, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   43
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Avelã
tamanho                                   Kit 4 lugares
quantidade                                          7.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 43, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (44, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Preto', 'Kit 6 lugares', 4, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   44
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Preto
tamanho                                   Kit 6 lugares
quantidade                                          4.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 44, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (45, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Preto', 'Kit 4 lugares', 3, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   45
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Preto
tamanho                                   Kit 4 lugares
quantidade                                          3.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 45, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (46, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Cinza', 'Kit 6 lugares', NULL, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   46
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Cinza
tamanho                                   Kit 6 lugares
quantidade                                          NaN
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 46, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (47, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Cinza', 'Kit 4 lugares', 2, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   47
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Cinza
tamanho                                   Kit 4 lugares
quantidade                                          2.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 47, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (48, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Verde', 'Kit 6 lugares', 3, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   48
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Verde
tamanho                                   Kit 6 lugares
quantidade                                          3.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 48, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (49, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Verde', 'Kit 4 lugares', 2, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   49
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                               Verde
tamanho                                   Kit 4 lugares
quantidade                                          2.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 49, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (50, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Azul', 'Kit 6 lugares', 3, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   50
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                                Azul
tamanho                                   Kit 6 lugares
quantidade                                          3.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 50, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (51, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Azul', 'Kit 4 lugares', 2, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   51
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                                Azul
tamanho                                   Kit 4 lugares
quantidade                                          2.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 51, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (52, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Vermelho', 'Kit 6 lugares', 4, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   52
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                            Vermelho
tamanho                                   Kit 6 lugares
quantidade                                          4.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 52, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (53, 'VARIADOS', 'Capas de Cadeira Veludo - Ametista', 'Capa de cadeira Veludo - Ametista', NULL, 'Vermelho', 'Kit 4 lugares', 5, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                                   53
fonte                                          VARIADOS
secao                Capas de Cadeira Veludo - Ametista
produto               Capa de cadeira Veludo - Ametista
modelo                                                 
cor                                            Vermelho
tamanho                                   Kit 4 lugares
quantidade                                          5.0
unidade                                             kit
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 53, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (54, 'VARIADOS', 'Capas de Cadeira - Variadas', '6 capas de cadeira / Malha Helanca / Palha', NULL, '100% Poliéster', '55 x 46 x 45 x 12', NULL, 'kit', '1 kit', '<bound method IndexOpsMixin.item of id                                                           54
fonte                                                  VARIADOS
secao                               Capas de Cadeira - Variadas
produto              6 capas de cadeira / Malha Helanca / Palha
modelo                                                         
cor                                              100% Poliéster
tamanho                                       55 x 46 x 45 x 12
quantidade                                                  NaN
unidade                                                     kit
tecido_composicao                                         1 kit
item                                                           
medida                                                         
observacoes                    Quantidade registrada como 1 kit
Name: 54, dtype: object>', NULL, 'Quantidade registrada como 1 kit');
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (55, 'VARIADOS', 'Capas de Cadeira - Variadas', '6 capas de cadeira / Malha gel / Estampa Natalina', NULL, '100% Poliéster', '-', NULL, 'kit', '2 kit', '<bound method IndexOpsMixin.item of id                                                                  55
fonte                                                         VARIADOS
secao                                      Capas de Cadeira - Variadas
produto              6 capas de cadeira / Malha gel / Estampa Natalina
modelo                                                                
cor                                                     100% Poliéster
tamanho                                                              -
quantidade                                                         NaN
unidade                                                            kit
tecido_composicao                                                2 kit
item                                                                  
medida                                                                
observacoes                           Quantidade registrada como 2 kit
Name: 55, dtype: object>', NULL, 'Quantidade registrada como 2 kit');
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (56, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   56
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 56, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (57, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 7, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   57
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                          7.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 57, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (58, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 17, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   58
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                         17.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 58, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (59, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   59
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 59, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (60, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   60
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 60, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (61, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 10, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   61
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                         10.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 61, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (62, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 10, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   62
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                         10.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 62, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (63, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   63
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 63, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (64, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   64
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 64, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (65, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 12, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   65
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                         12.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 65, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (66, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 12, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   66
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                         12.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 66, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (67, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   67
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 67, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (68, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   68
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 68, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (69, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 11, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   69
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                         11.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 69, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (70, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 12, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   70
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                         12.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 70, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (71, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   71
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 71, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (72, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   72
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 72, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (73, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 4, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   73
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                          4.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 73, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (74, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 5, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   74
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                          5.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 74, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (75, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   75
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 75, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (76, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'King', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   76
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                            King
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 76, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (77, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Queen', 15, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   77
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Queen
quantidade                                         15.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 77, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (78, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Casal', 5, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   78
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                           Casal
quantidade                                          5.0
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 78, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (79, 'VARIADOS', 'Saia de cama Matelada com Pingente', 'Saia Matelada com Pingente', NULL, NULL, 'Solteiro', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                   79
fonte                                          VARIADOS
secao                Saia de cama Matelada com Pingente
produto                      Saia Matelada com Pingente
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                                      
item                                                   
medida                                                 
observacoes                                            
Name: 79, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (80, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            80
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 80, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (81, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', 1, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            81
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   1.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 81, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (82, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            82
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 82, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (83, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            83
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 83, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (84, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            84
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 84, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (85, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            85
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 85, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (86, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', 1, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            86
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   1.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 86, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (87, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            87
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 87, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (88, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            88
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 88, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (89, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            89
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 89, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (90, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', 3, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            90
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   3.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 90, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (91, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            91
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 91, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (92, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            92
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 92, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (93, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', 1, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            93
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   1.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 93, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (94, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', 2, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            94
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   2.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 94, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (95, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            95
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 95, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (96, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            96
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 96, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (97, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', 2, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            97
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   2.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 97, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (98, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            98
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 98, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (99, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                            99
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 99, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (100, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           100
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 100, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (101, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', 2, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           101
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   2.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 101, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (102, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', 1, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           102
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   1.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 102, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (103, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           103
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 103, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (104, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           104
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 104, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (105, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', 2, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           105
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   2.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 105, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (106, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', 2, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           106
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   2.0
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 106, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (107, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           107
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 107, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (108, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'King', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           108
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                     King
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 108, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (109, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Queen', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           109
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Queen
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 109, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (110, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Casal', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           110
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                    Casal
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 110, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (111, 'VARIADOS', 'Saia Box Ponto Palito', 'Saia Box Ponto Palito', NULL, NULL, 'Solteiro', NULL, 'un', '80% Algodão / 20% Poliéster', '<bound method IndexOpsMixin.item of id                                           111
fonte                                   VARIADOS
secao                      Saia Box Ponto Palito
produto                    Saia Box Ponto Palito
modelo                                          
cor                                             
tamanho                                 Solteiro
quantidade                                   NaN
unidade                                       un
tecido_composicao    80% Algodão / 20% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 111, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (112, 'VARIADOS', 'Saia de cama Matelada Ultrassônica', 'Saia de cama Matelada Ultrassônica', NULL, NULL, 'Solteiro', NULL, 'un', '100% poliéster', '<bound method IndexOpsMixin.item of id                                                  112
fonte                                          VARIADOS
secao                Saia de cama Matelada Ultrassônica
produto              Saia de cama Matelada Ultrassônica
modelo                                                 
cor                                                    
tamanho                                        Solteiro
quantidade                                          NaN
unidade                                              un
tecido_composicao                        100% poliéster
item                                                   
medida                                                 
observacoes                                            
Name: 112, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (113, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Cereja', NULL, 3, 'un', NULL, '<bound method IndexOpsMixin.item of id                               113
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                           Cereja
tamanho                             
quantidade                       3.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 113, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (114, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Cereja', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               114
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                           Cereja
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 114, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (115, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Cereja', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               115
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                           Cereja
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 115, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (116, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Geranio', NULL, 4, 'un', NULL, '<bound method IndexOpsMixin.item of id                               116
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                          Geranio
tamanho                             
quantidade                       4.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 116, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (117, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Geranio', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               117
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                          Geranio
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 117, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (118, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Geranio', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               118
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                          Geranio
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 118, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (119, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Rosa', NULL, 33, 'un', NULL, '<bound method IndexOpsMixin.item of id                               119
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                             Rosa
tamanho                             
quantidade                      33.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 119, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (120, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Rosa', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               120
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                             Rosa
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 120, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (121, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Rosa', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               121
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                             Rosa
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 121, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (122, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Turquesa', NULL, 19, 'un', NULL, '<bound method IndexOpsMixin.item of id                               122
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                         Turquesa
tamanho                             
quantidade                      19.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 122, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (123, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Turquesa', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               123
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                         Turquesa
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 123, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (124, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Turquesa', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               124
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                         Turquesa
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 124, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (125, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Amarelo', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               125
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                          Amarelo
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 125, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (126, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Amarelo', NULL, 17, 'un', NULL, '<bound method IndexOpsMixin.item of id                               126
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                          Amarelo
tamanho                             
quantidade                      17.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 126, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (127, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Amarelo', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               127
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                          Amarelo
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 127, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (128, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Cinza', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               128
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                            Cinza
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 128, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (129, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Cinza', NULL, 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                               129
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                            Cinza
tamanho                             
quantidade                       2.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 129, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (130, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Cinza', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               130
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                            Cinza
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 130, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (131, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Knut', 'Coral', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               131
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Knut
cor                            Coral
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 131, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (132, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Mike', 'Coral', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                               132
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                          Mike
cor                            Coral
tamanho                             
quantidade                       NaN
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 132, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (133, 'VARIADOS', 'Toalha de rosto', 'Toalha de rosto', 'Venice', 'Coral', NULL, 9, 'un', NULL, '<bound method IndexOpsMixin.item of id                               133
fonte                       VARIADOS
secao                Toalha de rosto
produto              Toalha de rosto
modelo                        Venice
cor                            Coral
tamanho                             
quantidade                       9.0
unidade                           un
tecido_composicao                   
item                                
medida                              
observacoes                         
Name: 133, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (134, 'VARIADOS', 'Toalha de mesa', 'Kit c/ 10 toalhas', NULL, 'Branca', '1,50 x 1,50', 2, 'kit', 'Tergal / / 100% Poliéster', '<bound method IndexOpsMixin.item of id                                         134
fonte                                 VARIADOS
secao                           Toalha de mesa
produto                      Kit c/ 10 toalhas
modelo                                        
cor                                     Branca
tamanho                            1,50 x 1,50
quantidade                                 2.0
unidade                                    kit
tecido_composicao    Tergal / / 100% Poliéster
item                                          
medida                                        
observacoes               2 kits / 1 pra lavar
Name: 134, dtype: object>', NULL, '2 kits / 1 pra lavar');
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (135, 'VARIADOS', 'Toalha de mesa', 'Kit para restaurante / c/ 15 toalhas', NULL, 'Creme', '1,50 x 1,50', 1, 'kit', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                    135
fonte                                            VARIADOS
secao                                      Toalha de mesa
produto              Kit para restaurante / c/ 15 toalhas
modelo                                                   
cor                                                 Creme
tamanho                                       1,50 x 1,50
quantidade                                            1.0
unidade                                               kit
tecido_composicao                          100% Poliéster
item                                                     
medida                                                   
observacoes                                              
Name: 135, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (136, 'VARIADOS', 'Toalha de mesa', '1 toalha de mesa', NULL, 'Palha', 'P / medir', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                136
fonte                        VARIADOS
secao                  Toalha de mesa
produto              1 toalha de mesa
modelo                               
cor                             Palha
tamanho                     P / medir
quantidade                        1.0
unidade                            un
tecido_composicao                   -
item                                 
medida                               
observacoes                          
Name: 136, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (137, 'VARIADOS', 'Toalha de mesa', '1 toalha de mesa', NULL, 'Estampa / Natalina', '2,00 x 1,40', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                  137
fonte                          VARIADOS
secao                    Toalha de mesa
produto                1 toalha de mesa
modelo                                 
cor                  Estampa / Natalina
tamanho                     2,00 x 1,40
quantidade                          1.0
unidade                              un
tecido_composicao        100% Poliéster
item                                   
medida                                 
observacoes                            
Name: 137, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (138, 'VARIADOS', 'Toalha de mesa', '1 toalha de mesa Renda / Desenho / Flor Queimada', NULL, 'Branco', '0,78 x 0,78', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                138
fonte                                                        VARIADOS
secao                                                  Toalha de mesa
produto              1 toalha de mesa Renda / Desenho / Flor Queimada
modelo                                                               
cor                                                            Branco
tamanho                                                   0,78 x 0,78
quantidade                                                        1.0
unidade                                                            un
tecido_composicao                                      100% Poliéster
item                                                                 
medida                                                               
observacoes                                                          
Name: 138, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (139, 'VARIADOS', 'PETs', 'Capa de almofada grande / p/ PET', NULL, 'Preto', '0,80x1,00', 1, 'un', '100%Poliéster', '<bound method IndexOpsMixin.item of id                                                139
fonte                                        VARIADOS
secao                                            PETs
produto              Capa de almofada grande / p/ PET
modelo                                               
cor                                             Preto
tamanho                                     0,80x1,00
quantidade                                        1.0
unidade                                            un
tecido_composicao                       100%Poliéster
item                                                 
medida                                               
observacoes                                          
Name: 139, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (140, 'VARIADOS', 'PETs', 'Almofada pequena p/ PET', NULL, 'Rosa Bebê', '0,50x0,26', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                       140
fonte                               VARIADOS
secao                                   PETs
produto              Almofada pequena p/ PET
modelo                                      
cor                                Rosa Bebê
tamanho                            0,50x0,26
quantidade                               1.0
unidade                                   un
tecido_composicao             100% Poliéster
item                                        
medida                                      
observacoes                                 
Name: 140, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (141, 'VARIADOS', 'Baby', 'Travesseiro Almofada - / Baby', NULL, 'Rosa', '0,30 x 0,20', 2, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                             141
fonte                                     VARIADOS
secao                                         Baby
produto              Travesseiro Almofada - / Baby
modelo                                            
cor                                           Rosa
tamanho                                0,30 x 0,20
quantidade                                     2.0
unidade                                         un
tecido_composicao                   100% Poliéster
item                                              
medida                                            
observacoes                                       
Name: 141, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (142, 'VARIADOS', 'Baby', 'Travesseiro Almofada - Baby', NULL, NULL, '0,30 x 0,20', NULL, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                           142
fonte                                   VARIADOS
secao                                       Baby
produto              Travesseiro Almofada - Baby
modelo                                          
cor                                             
tamanho                              0,30 x 0,20
quantidade                                   NaN
unidade                                       un
tecido_composicao                 100% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 142, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (143, 'VARIADOS', 'Baby', 'Travesseiro Almofada - Baby', NULL, NULL, '0,30 x 0,20', NULL, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                           143
fonte                                   VARIADOS
secao                                       Baby
produto              Travesseiro Almofada - Baby
modelo                                          
cor                                             
tamanho                              0,30 x 0,20
quantidade                                   NaN
unidade                                       un
tecido_composicao                 100% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 143, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (144, 'VARIADOS', 'Baby', 'Travesseiro Almofada - Baby', NULL, NULL, '0,30 x 0,20', NULL, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                           144
fonte                                   VARIADOS
secao                                       Baby
produto              Travesseiro Almofada - Baby
modelo                                          
cor                                             
tamanho                              0,30 x 0,20
quantidade                                   NaN
unidade                                       un
tecido_composicao                 100% Poliéster
item                                            
medida                                          
observacoes                                     
Name: 144, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (145, 'VARIADOS', 'Baby', 'Almofada de / Amamentação', NULL, 'Verde-Limão', '0,40 x 0,46', 1, 'un', '100%Poliéster', '<bound method IndexOpsMixin.item of id                                         145
fonte                                 VARIADOS
secao                                     Baby
produto              Almofada de / Amamentação
modelo                                        
cor                                Verde-Limão
tamanho                            0,40 x 0,46
quantidade                                 1.0
unidade                                     un
tecido_composicao                100%Poliéster
item                                          
medida                                        
observacoes                                   
Name: 145, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (146, 'VARIADOS', 'Baby', 'Manta para bebê / c/ sherpa', NULL, 'Azul', '90 x 70', 1, 'un', '100% poliéster', '<bound method IndexOpsMixin.item of id                                           146
fonte                                   VARIADOS
secao                                       Baby
produto              Manta para bebê / c/ sherpa
modelo                                          
cor                                         Azul
tamanho                                  90 x 70
quantidade                                   1.0
unidade                                       un
tecido_composicao                 100% poliéster
item                                            
medida                                          
observacoes                                     
Name: 146, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (147, 'VARIADOS', 'Tapetes', 'Tapete Dubai Estampado / Chevron / Gorgurinho', NULL, 'Marrom / Geométrico', '2,00 x 1,35', 1, 'un', 'Composição / 70%Poliéster / 30% Algodão / / Base Inferior: / Tecido Sintético / 100% Polipropileno', '<bound method IndexOpsMixin.item of id                                                                 147
fonte                                                         VARIADOS
secao                                                          Tapetes
produto                  Tapete Dubai Estampado / Chevron / Gorgurinho
modelo                                                                
cor                                                Marrom / Geométrico
tamanho                                                    2,00 x 1,35
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Composição / 70%Poliéster / 30% Algodão / / Ba...
item                                                                  
medida                                                                
observacoes                                                           
Name: 147, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (148, 'VARIADOS', 'Tapetes', 'Tapete Dubai Estampado - Chevron - Gorgurinho', NULL, NULL, NULL, NULL, 'un', 'Composição: 70% Poliéster / 30% Algodão / Base: 100% Polipropileno', '<bound method IndexOpsMixin.item of id                                                                 148
fonte                                                         VARIADOS
secao                                                          Tapetes
produto                  Tapete Dubai Estampado - Chevron - Gorgurinho
modelo                                                                
cor                                                                   
tamanho                                                               
quantidade                                                         NaN
unidade                                                             un
tecido_composicao    Composição: 70% Poliéster / 30% Algodão / Base...
item                                                                  
medida                                                                
observacoes                                                           
Name: 148, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (149, 'VARIADOS', 'Tapetes', 'Tapete Dubai Estampado - Chevron - Gorgurinho', NULL, NULL, NULL, NULL, 'un', 'Composição: 70% Poliéster / 30% Algodão / Base: 100% Polipropileno', '<bound method IndexOpsMixin.item of id                                                                 149
fonte                                                         VARIADOS
secao                                                          Tapetes
produto                  Tapete Dubai Estampado - Chevron - Gorgurinho
modelo                                                                
cor                                                                   
tamanho                                                               
quantidade                                                         NaN
unidade                                                             un
tecido_composicao    Composição: 70% Poliéster / 30% Algodão / Base...
item                                                                  
medida                                                                
observacoes                                                           
Name: 149, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (150, 'VARIADOS', 'Tapetes', 'Tapete Rústico', NULL, 'Tabaco / Palha', '2,00 x 2,50', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                              150
fonte                      VARIADOS
secao                       Tapetes
produto              Tapete Rústico
modelo                             
cor                  Tabaco / Palha
tamanho                 2,00 x 2,50
quantidade                      1.0
unidade                          un
tecido_composicao                 -
item                               
medida                             
observacoes                        
Name: 150, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (151, 'VARIADOS', 'Tapetes', 'Tapete Pelúcia', NULL, 'Branco', '1,60 x 0,80', 1, 'un', '100% poliéster', '<bound method IndexOpsMixin.item of id                              151
fonte                      VARIADOS
secao                       Tapetes
produto              Tapete Pelúcia
modelo                             
cor                          Branco
tamanho                 1,60 x 0,80
quantidade                      1.0
unidade                          un
tecido_composicao    100% poliéster
item                               
medida                             
observacoes                        
Name: 151, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (152, 'VARIADOS', 'Peseira', 'Peseira - Queen - / 3 peças', NULL, 'Caqui', 'P/ MEDIR', 1, 'kit', '-', '<bound method IndexOpsMixin.item of id                                           152
fonte                                   VARIADOS
secao                                    Peseira
produto              Peseira - Queen - / 3 peças
modelo                                          
cor                                        Caqui
tamanho                                 P/ MEDIR
quantidade                                   1.0
unidade                                      kit
tecido_composicao                              -
item                                            
medida                                          
observacoes                                     
Name: 152, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (153, 'VARIADOS', 'Peseira', 'Peseira - Piquet - / 2 peças -', NULL, 'Cinza', 'P/ MEDIR', 1, 'kit', '60%Algodão / / 40%Poliéster', '<bound method IndexOpsMixin.item of id                                              153
fonte                                      VARIADOS
secao                                       Peseira
produto              Peseira - Piquet - / 2 peças -
modelo                                             
cor                                           Cinza
tamanho                                    P/ MEDIR
quantidade                                      1.0
unidade                                         kit
tecido_composicao       60%Algodão / / 40%Poliéster
item                                               
medida                                             
observacoes                                        
Name: 153, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (154, 'VARIADOS', 'Peseira', 'Peseira - Piquet - / 2 peças', NULL, 'Rosê', '-', 1, 'kit', '60%Algodão / / 40%Poliéster', '<bound method IndexOpsMixin.item of id                                            154
fonte                                    VARIADOS
secao                                     Peseira
produto              Peseira - Piquet - / 2 peças
modelo                                           
cor                                          Rosê
tamanho                                         -
quantidade                                    1.0
unidade                                       kit
tecido_composicao     60%Algodão / / 40%Poliéster
item                                             
medida                                           
observacoes                                      
Name: 154, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (155, 'VARIADOS', 'Pillow Top', 'Pillow Top - Matelado / Solteiro', NULL, 'Branco', '1,50 x 1,90', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                                155
fonte                                        VARIADOS
secao                                      Pillow Top
produto              Pillow Top - Matelado / Solteiro
modelo                                               
cor                                            Branco
tamanho                                   1,50 x 1,90
quantidade                                        1.0
unidade                                            un
tecido_composicao                                   -
item                                                 
medida                                               
observacoes                                          
Name: 155, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (156, 'VARIADOS', 'Pillow Top', '1 Pillow Top - Matelado / Casal -', NULL, 'Pink / Preto', '?', 1, 'un', 'Microfibra', '<bound method IndexOpsMixin.item of id                                                 156
fonte                                         VARIADOS
secao                                       Pillow Top
produto              1 Pillow Top - Matelado / Casal -
modelo                                                
cor                                       Pink / Preto
tamanho                                              ?
quantidade                                         1.0
unidade                                             un
tecido_composicao                           Microfibra
item                                                  
medida                                                
observacoes                                           
Name: 156, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (157, 'VARIADOS', 'Pillow Top', 'Pillow Top - Matelado / Casal', NULL, NULL, 'Branco', NULL, 'un', '?', '<bound method IndexOpsMixin.item of id                                             157
fonte                                     VARIADOS
secao                                   Pillow Top
produto              Pillow Top - Matelado / Casal
modelo                                            
cor                                               
tamanho                                     Branco
quantidade                                     NaN
unidade                                         un
tecido_composicao                                ?
item                                              
medida                                            
observacoes                                       
Name: 157, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (158, 'VARIADOS', 'Almofada', 'Paris', NULL, 'Sortido', '40 x 40', 4, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                              158
fonte                      VARIADOS
secao                      Almofada
produto                       Paris
modelo                             
cor                         Sortido
tamanho                     40 x 40
quantidade                      4.0
unidade                          un
tecido_composicao    100% Poliéster
item                               
medida                             
observacoes                        
Name: 158, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (159, 'VARIADOS', 'Capa de Almofada', '4 capas de almofadas / Zig - Zag', NULL, 'Preto e Branco', '40 x 40', 1, 'kit', '-', '<bound method IndexOpsMixin.item of id                                                159
fonte                                        VARIADOS
secao                                Capa de Almofada
produto              4 capas de almofadas / Zig - Zag
modelo                                               
cor                                    Preto e Branco
tamanho                                       40 x 40
quantidade                                        1.0
unidade                                           kit
tecido_composicao                                   -
item                                                 
medida                                               
observacoes                                          
Name: 159, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (160, 'VARIADOS', 'Enchimento', 'Enchimento microfibra', NULL, 'Branco', '40 x 40', 4, 'un', '100% poliéster', '<bound method IndexOpsMixin.item of id                                     160
fonte                             VARIADOS
secao                           Enchimento
produto              Enchimento microfibra
modelo                                    
cor                                 Branco
tamanho                            40 x 40
quantidade                             4.0
unidade                                 un
tecido_composicao           100% poliéster
item                                      
medida                                    
observacoes                               
Name: 160, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (161, 'VARIADOS', 'Capa plástica para trocador reto', 'Plástico PVC', NULL, 'Transparente', '0,71 x 0,48', 1, 'un', '100% polipropileno', '<bound method IndexOpsMixin.item of id                                                161
fonte                                        VARIADOS
secao                Capa plástica para trocador reto
produto                                  Plástico PVC
modelo                                               
cor                                      Transparente
tamanho                                   0,71 x 0,48
quantidade                                        1.0
unidade                                            un
tecido_composicao                  100% polipropileno
item                                                 
medida                                               
observacoes                                          
Name: 161, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (162, 'LençolFronha', 'Kit lençol + Fronha', 'Solene - / C/ elástico / 100%Poliéster - / Solteiro', 'Solene', 'Tabaco', '1 lençol', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 162
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Solene - / C/ elástico / 100%Poliéster - / Sol...
modelo                                                          Solene
cor                                                             Tabaco
tamanho                                                       1 lençol
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 162, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (163, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 4 pçs - Queen / 100% Algodão', '-', 'Cinza e Azul', '1 Lençol de cima', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                           163
fonte                                               LençolFronha
secao                                        Kit lençol + Fronha
produto              Jogo de cama / 4 pçs - Queen / 100% Algodão
modelo                                                         -
cor                                                 Cinza e Azul
tamanho                                         1 Lençol de cima
quantidade                                                   NaN
unidade                                                       un
tecido_composicao                                               
item                                                           1
medida                                                          
observacoes                                                     
Name: 164, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (164, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 3 pçs - Queen / Micropercal', '100% Poliester', 'Azul Geométrico', '1 Lençol c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                          164
fonte                                              LençolFronha
secao                                       Kit lençol + Fronha
produto              Jogo de cama / 3 pçs - Queen / Micropercal
modelo                                           100% Poliester
cor                                             Azul Geométrico
tamanho                                    1 Lençol c/ elástico
quantidade                                                  NaN
unidade                                                      un
tecido_composicao                                              
item                                                          1
medida                                                         
observacoes                                                    
Name: 167, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (165, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 4 pçs / 180 fios', '80% Algodão / 20% Poliéster', 'Palha', '1 Lençol de cima', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               165
fonte                                   LençolFronha
secao                            Kit lençol + Fronha
produto              Jogo de cama / 4 pçs / 180 fios
modelo                   80% Algodão / 20% Poliéster
cor                                            Palha
tamanho                             1 Lençol de cima
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                               1
medida                                              
observacoes                                         
Name: 169, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (166, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / Padrão / Plush', '100% Poliester', 'Tabaco', '1 Lençol de baixo / c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               166
fonte                                   LençolFronha
secao                            Kit lençol + Fronha
produto                Jogo de cama / Padrão / Plush
modelo                                100% Poliester
cor                                           Tabaco
tamanho              1 Lençol de baixo / c/ elástico
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                               1
medida                                              
observacoes                                         
Name: 172, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (167, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / Austin - 3 pçs / Solteiro', '100% Poliester', 'Preto', '1 Lençol de cima', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                        167
fonte                                            LençolFronha
secao                                     Kit lençol + Fronha
produto              Jogo de cama / Austin - 3 pçs / Solteiro
modelo                                         100% Poliester
cor                                                     Preto
tamanho                                      1 Lençol de cima
quantidade                                                NaN
unidade                                                    un
tecido_composicao                                            
item                                                        1
medida                                                       
observacoes                                                  
Name: 174, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (168, 'LençolFronha', 'Kit lençol + Fronha', NULL, NULL, 'Branco', '1 Lençol de baixo / c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               168
fonte                                   LençolFronha
secao                            Kit lençol + Fronha
produto                                             
modelo                                              
cor                                           Branco
tamanho              1 Lençol de baixo / c/ elástico
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                                
medida                                              
observacoes                                         
Name: 175, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (169, 'LençolFronha', 'Kit lençol + Fronha', NULL, NULL, 'Preto', '1 fronha', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                   169
fonte                       LençolFronha
secao                Kit lençol + Fronha
produto                                 
modelo                                  
cor                                Preto
tamanho                         1 fronha
quantidade                           NaN
unidade                               un
tecido_composicao                       
item                                    
medida                                  
observacoes                             
Name: 176, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (170, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 400 fios / 3 pçs - Casal', '-', 'Branco', '1 lençol', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                       170
fonte                                           LençolFronha
secao                                    Kit lençol + Fronha
produto              Jogo de cama / 400 fios / 3 pçs - Casal
modelo                                                     -
cor                                                   Branco
tamanho                                             1 lençol
quantidade                                               NaN
unidade                                                   un
tecido_composicao                                           
item                                                       1
medida                                                      
observacoes                                                 
Name: 177, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (171, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 3 pçs / Queen', 'Microfibra', 'Pink', '1 Lençol / c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                            171
fonte                                LençolFronha
secao                         Kit lençol + Fronha
produto              Jogo de cama / 3 pçs / Queen
modelo                                 Microfibra
cor                                          Pink
tamanho                    1 Lençol / c/ elástico
quantidade                                    NaN
unidade                                        un
tecido_composicao                                
item                                            1
medida                                           
observacoes                                      
Name: 179, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (172, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 3 pçs / Estampado', 'Microfibra', 'Florida', '1 Lençol / c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                172
fonte                                    LençolFronha
secao                             Kit lençol + Fronha
produto              Jogo de cama / 3 pçs / Estampado
modelo                                     Microfibra
cor                                           Florida
tamanho                        1 Lençol / c/ elástico
quantidade                                        NaN
unidade                                            un
tecido_composicao                                    
item                                                3
medida                                               
observacoes                                          
Name: 181, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (173, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / 4 pçs / Queen', '100% algodão', 'Verde Água', '1 Lençol de cima', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                            173
fonte                                LençolFronha
secao                         Kit lençol + Fronha
produto              Jogo de cama / 4 pçs / Queen
modelo                               100% algodão
cor                                    Verde Água
tamanho                          1 Lençol de cima
quantidade                                    NaN
unidade                                        un
tecido_composicao                                
item                                            1
medida                                           
observacoes                                      
Name: 183, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (174, 'LençolFronha', 'Kit lençol + Fronha', NULL, NULL, 'Branco', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                   174
fonte                       LençolFronha
secao                Kit lençol + Fronha
produto                                 
modelo                                  
cor                               Branco
tamanho                                 
quantidade                           NaN
unidade                               un
tecido_composicao                       
item                                   1
medida                                  
observacoes                             
Name: 185, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (175, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / 400 fios Microfibra / 3 pçs / Queen', '100% poliéster', 'Branco', '1 Lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 175
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / 400 fios Microfibra / 3 pçs /...
modelo                                                  100% poliéster
cor                                                             Branco
tamanho                                              1 Lençol de baixo
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 187, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (176, 'LençolFronha', 'Kit lençol + Fronha', NULL, NULL, 'Palha', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                   176
fonte                       LençolFronha
secao                Kit lençol + Fronha
produto                                 
modelo                                  
cor                                Palha
tamanho                                 
quantidade                           NaN
unidade                               un
tecido_composicao                       
item                                   1
medida                                  
observacoes                             
Name: 188, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (177, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / Ponto palito / Micropercal / 400 fios - 2 pçs', '100% poliéster', 'Rosê', '1 lençol c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 177
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / Ponto palito / Micropercal / ...
modelo                                                  100% poliéster
cor                                                               Rosê
tamanho                                           1 lençol c/ elástico
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 190, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (178, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / CASAL / Ponto palito / Micropercal / 400 fios - 3 pçs', '100% poliéster', 'Verde - / Estampa / Folhas verdes', '1 lençol c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 178
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / CASAL / Ponto palito / Microp...
modelo                                                  100% poliéster
cor                                  Verde - / Estampa / Folhas verdes
tamanho                                           1 lençol c/ elástico
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 192, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (179, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / QUEEN - 3 pçs / Ponto Palito / Micropercal', '100% poliéster', 'Avelã', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 179
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / QUEEN - 3 pçs / Ponto Palito ...
modelo                                                  100% poliéster
cor                                                              Avelã
tamanho                                              1 lençol de baixo
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 194, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (180, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / QUEEN SPÇ / Micropercal', '100% poliéster', 'Estampado Rosê / e Marrom com Flores', '1 lençol de baixo / c/ elástico', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                        180
fonte                                            LençolFronha
secao                                     Kit lençol + Fronha
produto              Jogo de lençol / QUEEN SPÇ / Micropercal
modelo                                         100% poliéster
cor                      Estampado Rosê / e Marrom com Flores
tamanho                       1 lençol de baixo / c/ elástico
quantidade                                                NaN
unidade                                                    un
tecido_composicao                                            
item                                                        1
medida                                                       
observacoes                                                  
Name: 196, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (181, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de cama / CASAL - Plush / 3 pçs', '100% poliéster', 'Cinza claro', '2 fronhas', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    181
fonte                                        LençolFronha
secao                                 Kit lençol + Fronha
produto              Jogo de cama / CASAL - Plush / 3 pçs
modelo                                     100% poliéster
cor                                           Cinza claro
tamanho                                         2 fronhas
quantidade                                            NaN
unidade                                                un
tecido_composicao                                        
item                                                    1
medida                                                   
observacoes                                              
Name: 200, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (182, 'LençolFronha', 'Kit lençol + Fronha', NULL, NULL, 'Tabaco', NULL, NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                   182
fonte                       LençolFronha
secao                Kit lençol + Fronha
produto                                 
modelo                                  
cor                               Tabaco
tamanho                                 
quantidade                           NaN
unidade                               un
tecido_composicao                       
item                                   1
medida                                  
observacoes                             
Name: 202, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (183, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / CASAL - 3 pçs / Micropercal', '100% algodão', 'Creme', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                            183
fonte                                                LençolFronha
secao                                         Kit lençol + Fronha
produto              Jogo de lençol / CASAL - 3 pçs / Micropercal
modelo                                               100% algodão
cor                                                         Creme
tamanho                                         1 lençol de baixo
quantidade                                                    NaN
unidade                                                        un
tecido_composicao                                                
item                                                            1
medida                                                           
observacoes                                                      
Name: 203, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (184, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / QUEEN- 3 pçs- / 400 fios / Micropercal', '100% algodão / Microfibra', 'Azul marinho', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 184
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / QUEEN- 3 pçs- / 400 fios / Mi...
modelo                                       100% algodão / Microfibra
cor                                                       Azul marinho
tamanho                                              1 lençol de baixo
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 205, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (185, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / Solteiro', 'Microfibra / 100% poliéster', 'Cinza', '1 fronha', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                           185
fonte                               LençolFronha
secao                        Kit lençol + Fronha
produto                Jogo de lençol / Solteiro
modelo               Microfibra / 100% poliéster
cor                                        Cinza
tamanho                                 1 fronha
quantidade                                   NaN
unidade                                       un
tecido_composicao                               
item                                           1
medida                                          
observacoes                                     
Name: 207, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (186, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / king - 4 pçs / Ponto Palito / Micropercal / 400 fios', '100% poliéster', 'Branco', '2 fronhas', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 186
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / king - 4 pçs / Ponto Palito /...
modelo                                                  100% poliéster
cor                                                             Branco
tamanho                                                      2 fronhas
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 209, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (187, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / Casal - 3 pçs / Ponto Palito / MicroPercal', '100% algodão', 'Branco', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 187
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / Casal - 3 pçs / Ponto Palito ...
modelo                                                    100% algodão
cor                                                             Branco
tamanho                                              1 lençol de baixo
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 212, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (188, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol casal / 3 pçs - / Ponto palito', '100% algodão', 'Verde claro', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                             188
fonte                                                 LençolFronha
secao                                          Kit lençol + Fronha
produto              Jogo de lençol casal / 3 pçs - / Ponto palito
modelo                                                100% algodão
cor                                                    Verde claro
tamanho                                          1 lençol de baixo
quantidade                                                     NaN
unidade                                                         un
tecido_composicao                                                 
item                                                             1
medida                                                            
observacoes                                                       
Name: 214, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (189, 'LençolFronha', 'Kit lençol + Fronha', 'Jogo de lençol / 3 pçs CASAL / Ponto palito / Micropercal', '100% algodão', 'Rosa bebê', '1 lençol de baixo', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 189
fonte                                                     LençolFronha
secao                                              Kit lençol + Fronha
produto              Jogo de lençol / 3 pçs CASAL / Ponto palito / ...
modelo                                                    100% algodão
cor                                                          Rosa bebê
tamanho                                              1 lençol de baixo
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                 1
medida                                                                
observacoes                                                           
Name: 216, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (190, 'LençolFronha', 'Lençol Avulso', 'Lençol de baixo / c/ elástico / King', NULL, 'Azul bebê', '1,93 x 2,03 x 40', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                    190
fonte                                        LençolFronha
secao                                       Lençol Avulso
produto              Lençol de baixo / c/ elástico / King
modelo                                                   
cor                                             Azul bebê
tamanho                                  1,93 x 2,03 x 40
quantidade                                            1.0
unidade                                                un
tecido_composicao                          100% Poliéster
item                                                     
medida                                                   
observacoes                                              
Name: 218, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (191, 'LençolFronha', 'Lençol Avulso', 'Lençol de baixo / Micropercal / 400 fios / Solteiro', NULL, 'Azul', '2,50 x 1,50 x 30', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 191
fonte                                                     LençolFronha
secao                                                    Lençol Avulso
produto              Lençol de baixo / Micropercal / 400 fios / Sol...
modelo                                                                
cor                                                               Azul
tamanho                                               2,50 x 1,50 x 30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao                                       100% Poliéster
item                                                                  
medida                                                                
observacoes                                                           
Name: 219, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (192, 'LençolFronha', 'Lençol Avulso', 'Lençol Solteiro / 400 fios / Solteiro', NULL, 'Azul Marinho', '0,88 x 1,88 x 25', 1, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                                     192
fonte                                         LençolFronha
secao                                        Lençol Avulso
produto              Lençol Solteiro / 400 fios / Solteiro
modelo                                                    
cor                                           Azul Marinho
tamanho                                   0,88 x 1,88 x 25
quantidade                                             1.0
unidade                                                 un
tecido_composicao                           100% Poliéster
item                                                      
medida                                                    
observacoes                                               
Name: 220, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (193, 'LençolFronha', 'Lençol Avulso', 'Lençol c/ elástico / 260 fios / Queen', NULL, 'Azul', '1,98 x 1,58 x 40', 1, 'un', '-', '<bound method IndexOpsMixin.item of id                                                     193
fonte                                         LençolFronha
secao                                        Lençol Avulso
produto              Lençol c/ elástico / 260 fios / Queen
modelo                                                    
cor                                                   Azul
tamanho                                   1,98 x 1,58 x 40
quantidade                                             1.0
unidade                                                 un
tecido_composicao                                        -
item                                                      
medida                                                    
observacoes                                               
Name: 221, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (194, 'LençolFronha', 'Lençol Avulso', 'Lençol Solteiro / c/ elástico', NULL, 'Cinza', '1,88 x 0,88 x 20', 1, 'un', 'Microfibra - / 100% poliéster', '<bound method IndexOpsMixin.item of id                                             194
fonte                                 LençolFronha
secao                                Lençol Avulso
produto              Lençol Solteiro / c/ elástico
modelo                                            
cor                                          Cinza
tamanho                           1,88 x 0,88 x 20
quantidade                                     1.0
unidade                                         un
tecido_composicao    Microfibra - / 100% poliéster
item                                              
medida                                            
observacoes                                       
Name: 222, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (195, 'LençolFronha', 'Lençol Avulso', 'Lençol CASAL / 400 fios', NULL, 'Lilás', '1,38 x 1,88 x 25', 1, 'un', '100% poliéster', '<bound method IndexOpsMixin.item of id                                       195
fonte                           LençolFronha
secao                          Lençol Avulso
produto              Lençol CASAL / 400 fios
modelo                                      
cor                                    Lilás
tamanho                     1,38 x 1,88 x 25
quantidade                               1.0
unidade                                   un
tecido_composicao             100% poliéster
item                                        
medida                                      
observacoes                                 
Name: 223, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (196, 'LençolFronha', 'Lençol Avulso', '1 lençol KING / c/ elástico / 400 fios', NULL, 'Branco', '1,93 x 2,03 x 40', 1, 'un', '100% Algodão', '<bound method IndexOpsMixin.item of id                                                      196
fonte                                          LençolFronha
secao                                         Lençol Avulso
produto              1 lençol KING / c/ elástico / 400 fios
modelo                                                     
cor                                                  Branco
tamanho                                    1,93 x 2,03 x 40
quantidade                                              1.0
unidade                                                  un
tecido_composicao                              100% Algodão
item                                                       
medida                                                     
observacoes                                                
Name: 224, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (197, 'LençolFronha', 'Fronha', 'Fronha / 170 fios / Microfibra', NULL, 'Azul Marinho', '50 x 70', 2, 'un', '100% Poliéster', '<bound method IndexOpsMixin.item of id                                              197
fonte                                  LençolFronha
secao                                        Fronha
produto              Fronha / 170 fios / Microfibra
modelo                                             
cor                                    Azul Marinho
tamanho                                     50 x 70
quantidade                                      2.0
unidade                                          un
tecido_composicao                    100% Poliéster
item                                               
medida                                             
observacoes                                        
Name: 225, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (198, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Branco', '2,40 x 1,60', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               198
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Branco
tamanho                                  2,40 x 1,60
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                                       1 Edredom
medida                                              
observacoes                                         
Name: 226, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (199, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Branco', '2,20 x 2,40', 4, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    199
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                                Branco
tamanho                                       2,20 x 2,40
quantidade                                            4.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 227, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (200, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               200
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        1 Fronha
medida                                              
observacoes                                         
Name: 228, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (201, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               201
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                             1 Porta Travesseiro
medida                                              
observacoes                                         
Name: 229, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (202, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '1,88 x 0,88', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               202
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                  1,88 x 0,88
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                               1 Lençol de Baixo
medida                                              
observacoes                                         
Name: 230, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (203, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Aconchego - Queen - / 6 pçs - / Casa completa - / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 203
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Aconchego - Queen - / 6 pçs - / Casa compl...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 231, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (204, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', 'Cobreleito Microfibra- / 100 % poliéster - / Casal', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 204
fonte                                  EdredomCobreleitoCoberdromManta
secao                             Produtos Únicos (Avulsos e Unidades)
produto              Cobreleito Microfibra- / 100 % poliéster - / C...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 232, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (205, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Cinza', '2,40 x 2,20', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               205
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Cinza
tamanho                                  2,40 x 2,20
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                                       1 Edredom
medida                                              
observacoes                                         
Name: 233, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (206, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Salmão', '2,10 x 2,30', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    206
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                                Salmão
tamanho                                       2,10 x 2,30
quantidade                                            1.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 234, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (207, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               207
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        2 Fronha
medida                                              
observacoes                                         
Name: 235, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (208, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Tabaco', '50 x 70', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               208
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Tabaco
tamanho                                      50 x 70
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                             2 Porta Travesseiro
medida                                              
observacoes                                         
Name: 236, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (209, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Caqui', '2,20 x 2,40 x 0,25', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               209
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Caqui
tamanho                           2,20 x 2,40 x 0,25
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                               1 Lençol de Baixo
medida                                              
observacoes                                         
Name: 237, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (210, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Ternum - Queen - / 6 pçs / Casa completa - / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 210
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Ternum - Queen - / 6 pçs / Casa completa -...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 238, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (211, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', 'Edredom Avulso - / Casal - Microfibra - / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 211
fonte                                  EdredomCobreleitoCoberdromManta
secao                             Produtos Únicos (Avulsos e Unidades)
produto              Edredom Avulso - / Casal - Microfibra - / 100%...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 239, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (212, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Cinza', '2,20 x 2,40', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               212
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Cinza
tamanho                                  2,20 x 2,40
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                                       1 Edredom
medida                                              
observacoes                                         
Name: 240, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (213, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Preto', '2,20 x 2,40', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    213
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                                 Preto
tamanho                                       2,20 x 2,40
quantidade                                            1.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 241, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (214, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               214
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        2 Fronha
medida                                              
observacoes                                         
Name: 242, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (215, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Preto', '50 x 70', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               215
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Preto
tamanho                                      50 x 70
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                             2 Porta Travesseiro
medida                                              
observacoes                                         
Name: 243, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (216, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '2,20 x 2,60 x 0,25', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               216
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                           2,20 x 2,60 x 0,25
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                               1 Lençol de Baixo
medida                                              
observacoes                                         
Name: 244, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (217, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Edredon Margarida - / 2 pçs - / Solteiro - / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 217
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Edredon Margarida - / 2 pçs - / Solteiro -...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 245, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (218, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', 'Coberdrom Chamego - / Queen / + / Sherpa - / Enchimento - 120 g / (Tudo 100% poliéster)', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 218
fonte                                  EdredomCobreleitoCoberdromManta
secao                             Produtos Únicos (Avulsos e Unidades)
produto              Coberdrom Chamego - / Queen / + / Sherpa - / E...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 246, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (219, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, '?', '2,40 x 1,60', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               219
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                ?
tamanho                                  2,40 x 1,60
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                                       1 Edredom
medida                                              
observacoes                                         
Name: 247, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (220, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Cinza', '2,50 x 2,40', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    220
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                                 Cinza
tamanho                                       2,50 x 2,40
quantidade                                            1.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 248, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (221, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, '?', '50 x 70', 1, 'kit', NULL, '<bound method IndexOpsMixin.item of id                                               221
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                ?
tamanho                                      50 x 70
quantidade                                       1.0
unidade                                          kit
tecido_composicao                                   
item                             1 Porta travesseiro
medida                                              
observacoes                                         
Name: 249, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (222, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Conforto - King - / 6 pçs', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               222
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                Kit Conforto - King - / 6 pçs
modelo                                              
cor                                              Cor
tamanho                                      Tamanho
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                            Item
medida                                              
observacoes                                         
Name: 250, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (223, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', 'Cobreleito Casal / Padrão / Matelado / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 223
fonte                                  EdredomCobreleitoCoberdromManta
secao                             Produtos Únicos (Avulsos e Unidades)
produto              Cobreleito Casal / Padrão / Matelado / 100% Po...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                                  
medida                                                                
observacoes                                                           
Name: 251, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (224, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Avelã', '?', 4, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               224
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Avelã
tamanho                                            ?
quantidade                                       4.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 252, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (225, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Tabaco', '2,20 x 2,35', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    225
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                                Tabaco
tamanho                                       2,20 x 2,35
quantidade                                            2.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 253, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (226, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Tabaco', '?', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               226
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Tabaco
tamanho                                            ?
quantidade                                       2.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 254, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (227, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Vermelho', '?', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               227
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                         Vermelho
tamanho                                            ?
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 255, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (228, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Branco', '?', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               228
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Branco
tamanho                                            ?
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 256, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (229, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Charm - Queen - / 7 pçs', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               229
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                  Kit Charm - Queen - / 7 pçs
modelo                                              
cor                                              Cor
tamanho                                      Tamanho
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                            Item
medida                                              
observacoes                                         
Name: 257, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (230, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', 'Manta Casal / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    230
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                      Manta Casal / 100% poliéster
modelo                                                   
cor                                                   Cor
tamanho                                           Tamanho
quantidade                                            NaN
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 258, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (231, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Branco', '?', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               231
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Branco
tamanho                                            ?
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 259, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (232, 'EdredomCobreleitoCoberdromManta', 'Produtos Únicos (Avulsos e Unidades)', NULL, NULL, 'Cinza Claro', '1,80 x 2,20', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                    232
fonte                     EdredomCobreleitoCoberdromManta
secao                Produtos Únicos (Avulsos e Unidades)
produto                                                  
modelo                                                   
cor                                           Cinza Claro
tamanho                                       1,80 x 2,20
quantidade                                            1.0
unidade                                                un
tecido_composicao                                        
item                                                     
medida                                                   
observacoes                                              
Name: 260, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (233, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '?', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               233
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                            ?
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 261, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (234, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Salmão', '?', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               234
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Salmão
tamanho                                            ?
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 262, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (235, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '?', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               235
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                            ?
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                               ?
medida                                              
observacoes                                         
Name: 263, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (236, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Matelado - / Solteiro - / Cobreleito + Fronha - / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 236
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Matelado - / Solteiro - / Cobreleito + Fro...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 264, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (237, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Pink', '?', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               237
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                             Pink
tamanho                                            ?
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 265, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (238, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '?', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               238
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                            ?
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        1 Fronha
medida                                              
observacoes                                         
Name: 267, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (239, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito - Casal - / 3 pçs', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                239
fonte                 EdredomCobreleitoCoberdromManta
secao                                    Kits de Cama
produto              Kit Cobreleito - Casal - / 3 pçs
modelo                                               
cor                                               Cor
tamanho                                       Tamanho
quantidade                                        NaN
unidade                                            un
tecido_composicao                                    
item                                             Item
medida                                               
observacoes                                          
Name: 269, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (240, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Rosa Bebê', '2,30 x 2,10', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               240
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                        Rosa Bebê
tamanho                                  2,30 x 2,10
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 270, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (241, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               241
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                       2 Fronhas
medida                                              
observacoes                                         
Name: 271, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (242, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito - Casal - / Microfibra', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                     242
fonte                      EdredomCobreleitoCoberdromManta
secao                                         Kits de Cama
produto              Kit Cobreleito - Casal - / Microfibra
modelo                                                    
cor                                                    Cor
tamanho                                            Tamanho
quantidade                                             NaN
unidade                                                 un
tecido_composicao                                         
item                                                  Item
medida                                                    
observacoes                                               
Name: 272, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (243, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Vermelho', '1,90 x 1,45', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               243
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                         Vermelho
tamanho                                  1,90 x 1,45
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 273, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (244, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '60 x 46', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               244
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      60 x 46
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                       2 Fronhas
medida                                              
observacoes                                         
Name: 274, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (245, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Edredom - / Mickey e Minnie - / Microfibra - / 100% poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 245
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Edredom - / Mickey e Minnie - / Microfibra...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 275, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (246, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Pink', '2,60 x 2,20', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               246
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                             Pink
tamanho                                  2,60 x 2,20
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                       1 Edredom
medida                                              
observacoes                                         
Name: 276, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (247, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               247
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        2 Fronha
medida                                              
observacoes                                         
Name: 277, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (248, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               248
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                             2 Porta travesseiro
medida                                              
observacoes                                         
Name: 278, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (249, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + Porta / Solteiro / Matelado / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 249
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + Porta / Solteiro / Matelado /...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 279, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (250, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Cinza', '2,44 x 1,92', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               250
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Cinza
tamanho                                  2,44 x 1,92
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 280, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (251, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               251
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           2 Porta - travesseiro
medida                                              
observacoes                                         
Name: 281, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (252, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + Porta / Casal / Matelado / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 252
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + Porta / Casal / Matelado / 10...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 282, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (253, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Salmão', '2,00 x 2,12', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               253
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Salmão
tamanho                                  2,00 x 2,12
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 283, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (254, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               254
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           2 Porta - travesseiro
medida                                              
observacoes                                         
Name: 284, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (255, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + Porta / Casal / Matelado / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 255
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + Porta / Casal / Matelado / 10...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 285, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (256, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Vermelho', '2,00 x 2,14', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               256
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                         Vermelho
tamanho                                  2,00 x 2,14
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 286, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (257, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               257
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           2 Porta - travesseiro
medida                                              
observacoes                                         
Name: 287, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (258, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + Porta / Solteiro / Matelado / 100% Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 258
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + Porta / Solteiro / Matelado /...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 288, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (259, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Vermelho', '2,16 x 1,68', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               259
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                         Vermelho
tamanho                                  2,16 x 1,68
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 289, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (260, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '50 x 70', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               260
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      50 x 70
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           2 Porta - travesseiro
medida                                              
observacoes                                         
Name: 290, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (261, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + / Porta Travesseiro c/ aba / 70%Algodão / 30%Poliéster / Casal', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 261
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + / Porta Travesseiro c/ aba / ...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 291, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (262, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Branco', '2,40 x 2,20', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               262
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                           Branco
tamanho                                  2,40 x 2,20
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 292, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (263, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '70 x 50', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               263
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      70 x 50
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           2 Porta - travesseiro
medida                                              
observacoes                                         
Name: 293, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (264, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Kit Cobreleito + / Porta Travesseiro c/ aba / 70%Algodão / 30%Poliéster / Solteiro', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 264
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Kit Cobreleito + / Porta Travesseiro c/ aba / ...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 294, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (265, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Palha', '2,40 x 1,60', 3, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               265
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Palha
tamanho                                  2,40 x 1,60
quantidade                                       3.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 295, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (266, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '70 x 50', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               266
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      70 x 50
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                           1 Porta - travesseiro
medida                                              
observacoes                                         
Name: 296, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (267, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Jogo Cobreleito / Solteiro - / 70%Algodão / / 30%Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 267
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Jogo Cobreleito / Solteiro - / 70%Algodão / / ...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 297, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (268, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Palha', '2,40 x 1,60', 2, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               268
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                            Palha
tamanho                                  2,40 x 1,60
quantidade                                       2.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 298, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (269, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '70 x 50', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               269
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      70 x 50
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                   1 Porta-Travesseiro / c/ abas
medida                                              
observacoes                                         
Name: 299, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (270, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', 'Jogo Cobreleito / Solteiro - / 67%Algodão / / 33%Poliéster', NULL, 'Cor', 'Tamanho', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                                                 270
fonte                                  EdredomCobreleitoCoberdromManta
secao                                                     Kits de Cama
produto              Jogo Cobreleito / Solteiro - / 67%Algodão / / ...
modelo                                                                
cor                                                                Cor
tamanho                                                        Tamanho
quantidade                                                         NaN
unidade                                                             un
tecido_composicao                                                     
item                                                              Item
medida                                                                
observacoes                                                           
Name: 300, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (271, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, 'Azul / Geométrico', '2,20 x 1,45', 1, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               271
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                Azul / Geométrico
tamanho                                  2,20 x 1,45
quantidade                                       1.0
unidade                                           un
tecido_composicao                                   
item                                    1 Cobreleito
medida                                              
observacoes                                         
Name: 301, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (272, 'EdredomCobreleitoCoberdromManta', 'Kits de Cama', NULL, NULL, NULL, '70 x 50', NULL, 'un', NULL, '<bound method IndexOpsMixin.item of id                                               272
fonte                EdredomCobreleitoCoberdromManta
secao                                   Kits de Cama
produto                                             
modelo                                              
cor                                                 
tamanho                                      70 x 50
quantidade                                       NaN
unidade                                           un
tecido_composicao                                   
item                                        1 Fronha
medida                                              
observacoes                                         
Name: 302, dtype: object>', NULL, NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (273, 'CORTINA', 'Cortinas', 'Nova Karla', NULL, 'Branco', '2,00 x 1,20', 1, 'un', 'Tecido: Renda; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 273
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                     Nova Karla
modelo                                                                
cor                                                             Branco
tamanho                                                    2,00 x 1,20
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Renda; Suspensão: Ilhós; Composição: 1...
item                                                                  
medida                                                     2,00 x 1,20
observacoes                                                           
Name: 303, dtype: object>', '2,00 x 1,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (274, 'CORTINA', 'Cortinas', 'Florata', NULL, 'Vermelho', '5,00 x 2,00', 1, 'un', 'Tecido: Oxford; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 274
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                        Florata
modelo                                                                
cor                                                           Vermelho
tamanho                                                    5,00 x 2,00
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Oxford; Suspensão: Ilhós; Composição: ...
item                                                                  
medida                                                     5,00 x 2,00
observacoes                                                           
Name: 304, dtype: object>', '5,00 x 2,00', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (275, 'CORTINA', 'Cortinas', NULL, NULL, 'Rosa', '2,00 x 1,40', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 70% Alg. / 30% Pol.', '<bound method IndexOpsMixin.item of id                                                                 275
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                               Rosa
tamanho                                                    2,00 x 1,40
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     2,00 x 1,40
observacoes                                                           
Name: 305, dtype: object>', '2,00 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (276, 'CORTINA', 'Cortinas', 'Paris', NULL, 'B: Cinza / F: Branco', '5,00 x 2,80', 1, 'un', 'Tecido: Malha Gel; Suspensão: Alça; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 276
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                          Paris
modelo                                                                
cor                                               B: Cinza / F: Branco
tamanho                                                    5,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Malha Gel; Suspensão: Alça; Composição...
item                                                                  
medida                                                     5,00 x 2,80
observacoes                                                           
Name: 306, dtype: object>', '5,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (277, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Marrom / F: Palha', '2,00 x 1,70', 1, 'un', 'Tecido: Malha Gel; Suspensão: Alça; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 277
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                               B: Marrom / F: Palha
tamanho                                                    2,00 x 1,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Malha Gel; Suspensão: Alça; Composição...
item                                                                  
medida                                                     2,00 x 1,70
observacoes                                                           
Name: 307, dtype: object>', '2,00 x 1,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (278, 'CORTINA', 'Cortinas', 'Sofia', NULL, 'B: Tabaco / F: Palha', '2,20 x 1,60', 1, 'un', 'Tecido: Malha Gel; Suspensão: --; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 278
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                          Sofia
modelo                                                                
cor                                               B: Tabaco / F: Palha
tamanho                                                    2,20 x 1,60
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Malha Gel; Suspensão: --; Composição: ...
item                                                                  
medida                                                     2,20 x 1,60
observacoes                                                           
Name: 308, dtype: object>', '2,20 x 1,60', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (279, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Tabaco / F: Avelã', '2,20 x 1,60', 1, 'un', 'Tecido: Malha Gel; Suspensão: --; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 279
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                               B: Tabaco / F: Avelã
tamanho                                                    2,20 x 1,60
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Malha Gel; Suspensão: --; Composição: ...
item                                                                  
medida                                                     2,20 x 1,60
observacoes                                                           
Name: 309, dtype: object>', '2,20 x 1,60', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (280, 'CORTINA', 'Cortinas', 'Roma Dennis', NULL, 'Branco', '3,00 x 2,80', 1, 'un', 'Tecido: Renda; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 280
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                    Roma Dennis
modelo                                                                
cor                                                             Branco
tamanho                                                    3,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Renda; Suspensão: Ilhós; Composição: 1...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 310, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (281, 'CORTINA', 'Cortinas', NULL, NULL, 'Palha', '3,00 x 2,80', 24, 'un', 'Tecido: Renda; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 281
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Palha
tamanho                                                    3,00 x 2,80
quantidade                                                        24.0
unidade                                                             un
tecido_composicao    Tecido: Renda; Suspensão: Ilhós; Composição: 1...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 311, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (282, 'CORTINA', 'Cortinas', 'Modelo / Linha', NULL, 'Cor- / Acabamento', 'Medidas (m)', NULL, 'un', 'Tecido: Tecido; Suspensão: Suspensão; Composição: Composição', '<bound method IndexOpsMixin.item of id                                                                 282
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                 Modelo / Linha
modelo                                                                
cor                                                  Cor- / Acabamento
tamanho                                                    Medidas (m)
quantidade                                                         NaN
unidade                                                             un
tecido_composicao    Tecido: Tecido; Suspensão: Suspensão; Composiç...
item                                                                  
medida                                                     Medidas (m)
observacoes                                                           
Name: 312, dtype: object>', 'Medidas (m)', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (283, 'CORTINA', 'Cortinas', 'Roma', NULL, 'Avelã', '5,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 283
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                           Roma
modelo                                                                
cor                                                              Avelã
tamanho                                                    5,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     5,00 x 2,80
observacoes                                                           
Name: 313, dtype: object>', '5,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (284, 'CORTINA', 'Cortinas', NULL, NULL, 'Tabaco', '6,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 284
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Tabaco
tamanho                                                    6,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     6,00 x 2,80
observacoes                                                           
Name: 314, dtype: object>', '6,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (285, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '6,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 285
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    6,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     6,00 x 2,80
observacoes                                                           
Name: 315, dtype: object>', '6,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (286, 'CORTINA', 'Cortinas', NULL, NULL, 'Tabaco', '3,00 x 2,50', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 286
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Tabaco
tamanho                                                    3,00 x 2,50
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,50
observacoes                                                           
Name: 316, dtype: object>', '3,00 x 2,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (287, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '3,00 x 2,50', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 287
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    3,00 x 2,50
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,50
observacoes                                                           
Name: 317, dtype: object>', '3,00 x 2,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (288, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,00 x 2,70', 2, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 288
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    2,00 x 2,70
quantidade                                                         2.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     2,00 x 2,70
observacoes                                                           
Name: 318, dtype: object>', '2,00 x 2,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (289, 'CORTINA', 'Cortinas', NULL, NULL, 'Avelã', '2,00 x 1,40', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 289
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Avelã
tamanho                                                    2,00 x 1,40
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     2,00 x 1,40
observacoes                                                           
Name: 319, dtype: object>', '2,00 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (290, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '3,00 x 2,20', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 290
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    3,00 x 2,20
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,20
observacoes                                                           
Name: 320, dtype: object>', '3,00 x 2,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (291, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '3,00 x 2,40', 2, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 291
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    3,00 x 2,40
quantidade                                                         2.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,40
observacoes                                                           
Name: 321, dtype: object>', '3,00 x 2,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (292, 'CORTINA', 'Cortinas', NULL, NULL, 'Dourado', '3,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 292
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                            Dourado
tamanho                                                    3,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 322, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (293, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '3,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 293
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    3,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 323, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (294, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '3,00 x 2,80', 1, 'un', 'Tecido: Blackout; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 294
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    3,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 324, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (295, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Avelâ / V: Branco', '4,00 x 2,30', 1, 'un', 'Tecido: Blackout + Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 295
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                               B: Avelâ / V: Branco
tamanho                                                    4,00 x 2,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil Liso; Suspensão: Ilhós...
item                                                                  
medida                                                     4,00 x 2,30
observacoes                                                           
Name: 325, dtype: object>', '4,00 x 2,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (296, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Rosa / V: Branco', '2,30 x 1,35', 1, 'un', 'Tecido: Blackout + Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 296
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                B: Rosa / V: Branco
tamanho                                                    2,30 x 1,35
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil Liso; Suspensão: Ilhós...
item                                                                  
medida                                                     2,30 x 1,35
observacoes                                                           
Name: 326, dtype: object>', '2,30 x 1,35', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (297, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Cinza / V: Branco', '7,00 x 2,80', 1, 'un', 'Tecido: Blackout + Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 297
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                               B: Cinza / V: Branco
tamanho                                                    7,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil Liso; Suspensão: Ilhós...
item                                                                  
medida                                                     7,00 x 2,80
observacoes                                                           
Name: 327, dtype: object>', '7,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (298, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '5,00 x 2,80', 1, 'un', 'Tecido: Blackout + Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 298
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    5,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil Liso; Suspensão: Ilhós...
item                                                                  
medida                                                     5,00 x 2,80
observacoes                                                           
Name: 328, dtype: object>', '5,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (299, 'CORTINA', 'Cortinas', NULL, NULL, 'Avelã', '3,00 x 2,80', 1, 'un', 'Tecido: Blackout + Voil Xadrez; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 299
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Avelã
tamanho                                                    3,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil Xadrez; Suspensão: Ilh...
item                                                                  
medida                                                     3,00 x 2,80
observacoes                                                           
Name: 329, dtype: object>', '3,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (300, 'CORTINA', 'Cortinas', NULL, NULL, '-', '9,00 x 2,70', 1, 'un', 'Tecido: Blackout + Voil; Suspensão: --; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 300
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                                  -
tamanho                                                    9,00 x 2,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout + Voil; Suspensão: --; Compos...
item                                                                  
medida                                                     9,00 x 2,70
observacoes                                                           
Name: 330, dtype: object>', '9,00 x 2,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (301, 'CORTINA', 'Cortinas', NULL, NULL, 'Verde Claro', '2,20 x 1,30', 2, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 301
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                        Verde Claro
tamanho                                                    2,20 x 1,30
quantidade                                                         2.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,20 x 1,30
observacoes                                                           
Name: 331, dtype: object>', '2,20 x 1,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (302, 'CORTINA', 'Cortinas', NULL, NULL, 'Marrom Claro', '2,20 x 1,30', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 302
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                       Marrom Claro
tamanho                                                    2,20 x 1,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,20 x 1,30
observacoes                                                           
Name: 332, dtype: object>', '2,20 x 1,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (303, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '2,20 x 1,30', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 303
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    2,20 x 1,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,20 x 1,30
observacoes                                                           
Name: 333, dtype: object>', '2,20 x 1,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (304, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '2,00 x 1,40', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 304
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    2,00 x 1,40
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,00 x 1,40
observacoes                                                           
Name: 334, dtype: object>', '2,00 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (305, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,00x 1,40', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 305
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                     2,00x 1,40
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                      2,00x 1,40
observacoes                                                           
Name: 335, dtype: object>', '2,00x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (306, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,00 x 1,35', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 306
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    2,00 x 1,35
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,00 x 1,35
observacoes                                                           
Name: 336, dtype: object>', '2,00 x 1,35', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (307, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,80 x 2,30', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 307
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    2,80 x 2,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,80 x 2,30
observacoes                                                           
Name: 337, dtype: object>', '2,80 x 2,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (308, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '2,80 x 2,30', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 308
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    2,80 x 2,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,80 x 2,30
observacoes                                                           
Name: 338, dtype: object>', '2,80 x 2,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (309, 'CORTINA', 'Cortinas', NULL, NULL, 'Marrom', '2,80 x 1,80', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 309
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Marrom
tamanho                                                    2,80 x 1,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,80 x 1,80
observacoes                                                           
Name: 339, dtype: object>', '2,80 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (310, 'CORTINA', 'Cortinas', NULL, NULL, 'Avelã', '2,00 x 1,30', 3, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 310
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Avelã
tamanho                                                    2,00 x 1,30
quantidade                                                         3.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,00 x 1,30
observacoes                                                           
Name: 340, dtype: object>', '2,00 x 1,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (311, 'CORTINA', 'Cortinas', NULL, NULL, 'Marrom', '2,60 x 1,80', 1, 'un', 'Tecido: Blackout (PVC); Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 311
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Marrom
tamanho                                                    2,60 x 1,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC); Suspensão: Ilhós; Comp...
item                                                                  
medida                                                     2,60 x 1,80
observacoes                                                           
Name: 341, dtype: object>', '2,60 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (312, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '1,10 x 1,40', 2, 'un', 'Tecido: Blackout (PVC) - 1 folha; Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 312
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    1,10 x 1,40
quantidade                                                         2.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC) - 1 folha; Suspensão: I...
item                                                                  
medida                                                     1,10 x 1,40
observacoes                                                           
Name: 342, dtype: object>', '1,10 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (313, 'CORTINA', 'Cortinas', NULL, NULL, 'Marrom', '1,10 x 1,40', 2, 'un', 'Tecido: Blackout (PVC) - 1 folha; Suspensão: Ilhós; Composição: 100% PVC', '<bound method IndexOpsMixin.item of id                                                                 313
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Marrom
tamanho                                                    1,10 x 1,40
quantidade                                                         2.0
unidade                                                             un
tecido_composicao    Tecido: Blackout (PVC) - 1 folha; Suspensão: I...
item                                                                  
medida                                                     1,10 x 1,40
observacoes                                                           
Name: 343, dtype: object>', '1,10 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (314, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '4,00 x 2,60', 1, 'un', 'Tecido: Gaze; Suspensão: Trilho; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 314
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    4,00 x 2,60
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Gaze; Suspensão: Trilho; Composição: 1...
item                                                                  
medida                                                     4,00 x 2,60
observacoes                                                           
Name: 344, dtype: object>', '4,00 x 2,60', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (315, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '8,00 x 2,80', 1, 'un', 'Tecido: Jacquard; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 315
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    8,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Jacquard; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     8,00 x 2,80
observacoes                                                           
Name: 345, dtype: object>', '8,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (316, 'CORTINA', 'Cortinas', NULL, NULL, 'Dourado', '4,80 x 2,70', 1, 'un', 'Tecido: Jacquard; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 316
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                            Dourado
tamanho                                                    4,80 x 2,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Jacquard; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     4,80 x 2,70
observacoes                                                           
Name: 346, dtype: object>', '4,80 x 2,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (317, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,60 x 1,80', 1, 'un', 'Tecido: Jacquard; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 317
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    2,60 x 1,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Jacquard; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     2,60 x 1,80
observacoes                                                           
Name: 347, dtype: object>', '2,60 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (318, 'CORTINA', 'Cortinas', NULL, NULL, 'Azul', '2,60 x 1,80', 4, 'un', 'Tecido: Jacquard; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 318
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                               Azul
tamanho                                                    2,60 x 1,80
quantidade                                                         4.0
unidade                                                             un
tecido_composicao    Tecido: Jacquard; Suspensão: Ilhós; Composição...
item                                                                  
medida                                                     2,60 x 1,80
observacoes                                                           
Name: 348, dtype: object>', '2,60 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (319, 'CORTINA', 'Cortinas', NULL, NULL, 'Vermelho', '3,00 x 2,50', 1, 'un', 'Tecido: Oxford; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 319
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                           Vermelho
tamanho                                                    3,00 x 2,50
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Oxford; Suspensão: Ilhós; Composição: ...
item                                                                  
medida                                                     3,00 x 2,50
observacoes                                                           
Name: 349, dtype: object>', '3,00 x 2,50', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (320, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '3,00 x 2,20', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 70% Alg. / 30% Pol.', '<bound method IndexOpsMixin.item of id                                                                 320
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    3,00 x 2,20
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     3,00 x 2,20
observacoes                                                           
Name: 350, dtype: object>', '3,00 x 2,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (321, 'CORTINA', 'Cortinas', NULL, NULL, 'Pink', '3,00 x 1,80', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 321
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                               Pink
tamanho                                                    3,00 x 1,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     3,00 x 1,80
observacoes                                                           
Name: 351, dtype: object>', '3,00 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (322, 'CORTINA', 'Cortinas', NULL, NULL, 'Rosa Chiclete', '3,00 x 1,80', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 322
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                      Rosa Chiclete
tamanho                                                    3,00 x 1,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     3,00 x 1,80
observacoes                                                           
Name: 352, dtype: object>', '3,00 x 1,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (323, 'CORTINA', 'Cortinas', NULL, NULL, 'Cinza', '2,00 x 1,40', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 323
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Cinza
tamanho                                                    2,00 x 1,40
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     2,00 x 1,40
observacoes                                                           
Name: 353, dtype: object>', '2,00 x 1,40', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (324, 'CORTINA', 'Cortinas', NULL, NULL, 'Areia', '3,00 x 2,30', 1, 'un', 'Tecido: Rústico; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 324
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Areia
tamanho                                                    3,00 x 2,30
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Rústico; Suspensão: Ilhós; Composição:...
item                                                                  
medida                                                     3,00 x 2,30
observacoes                                                           
Name: 354, dtype: object>', '3,00 x 2,30', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (325, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '5,00 x 2,80', 1, 'un', 'Tecido: Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 325
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    5,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Voil Liso; Suspensão: Ilhós; Composiçã...
item                                                                  
medida                                                     5,00 x 2,80
observacoes                                                           
Name: 355, dtype: object>', '5,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (326, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '4,00 x 2,20', 4, 'un', 'Tecido: Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 326
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    4,00 x 2,20
quantidade                                                         4.0
unidade                                                             un
tecido_composicao    Tecido: Voil Liso; Suspensão: Ilhós; Composiçã...
item                                                                  
medida                                                     4,00 x 2,20
observacoes                                                           
Name: 356, dtype: object>', '4,00 x 2,20', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (327, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '6,00 x 2,80', 1, 'un', 'Tecido: Voil Liso; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 327
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    6,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Voil Liso; Suspensão: Ilhós; Composiçã...
item                                                                  
medida                                                     6,00 x 2,80
observacoes                                                           
Name: 357, dtype: object>', '6,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (328, 'CORTINA', 'Cortinas', NULL, NULL, 'Branco', '4,00 x 2,80', 1, 'un', 'Tecido: Voil Liso; Suspensão: --; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 328
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                             Branco
tamanho                                                    4,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Voil Liso; Suspensão: --; Composição: ...
item                                                                  
medida                                                     4,00 x 2,80
observacoes                                                           
Name: 358, dtype: object>', '4,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (329, 'CORTINA', 'Cortinas', NULL, NULL, 'Palha', '8,00 x 2,80', 1, 'un', 'Tecido: Voil Liso; Suspensão: Trilho; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 329
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Palha
tamanho                                                    8,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Voil Liso; Suspensão: Trilho; Composiç...
item                                                                  
medida                                                     8,00 x 2,80
observacoes                                                           
Name: 359, dtype: object>', '8,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (330, 'CORTINA', 'Cortinas', NULL, NULL, 'Palha', '7,00 x 2,80', 1, 'un', 'Tecido: Voil Xadrez; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 330
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Palha
tamanho                                                    7,00 x 2,80
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Voil Xadrez; Suspensão: Ilhós; Composi...
item                                                                  
medida                                                     7,00 x 2,80
observacoes                                                           
Name: 360, dtype: object>', '7,00 x 2,80', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (331, 'CORTINA', 'Cortinas', NULL, NULL, 'Azul', '2,00 x 1,70', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 331
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                               Azul
tamanho                                                    2,00 x 1,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     2,00 x 1,70
observacoes                                                           
Name: 361, dtype: object>', '2,00 x 1,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (332, 'CORTINA', 'Cortinas', NULL, NULL, 'Preto', '2,00 x 1,70', 1, 'un', 'Tecido: Microfibra - 120 fios; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 332
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                              Preto
tamanho                                                    2,00 x 1,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra - 120 fios; Suspensão: Ilhó...
item                                                                  
medida                                                     2,00 x 1,70
observacoes                                                           
Name: 362, dtype: object>', '2,00 x 1,70', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (333, 'CORTINA', 'Cortinas', NULL, NULL, 'B: Rosa / V: Branco', '2,00 x 1,35', 1, 'un', 'Tecido: Microfibra + Voil liso + / amarrador; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 333
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                B: Rosa / V: Branco
tamanho                                                    2,00 x 1,35
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra + Voil liso + / amarrador; ...
item                                                                  
medida                                                     2,00 x 1,35
observacoes                                                           
Name: 363, dtype: object>', '2,00 x 1,35', NULL);
INSERT INTO estoque (id, fonte, secao, produto, modelo, cor, tamanho, quantidade, unidade, tecido_composicao, item, medida, observacoes) VALUES (334, 'CORTINA', 'Cortinas', NULL, NULL, 'Rosa', '2,00 x 1,70', 1, 'un', 'Tecido: Microfibra; Suspensão: Ilhós; Composição: 100% Poliéster', '<bound method IndexOpsMixin.item of id                                                                 334
fonte                                                          CORTINA
secao                                                         Cortinas
produto                                                               
modelo                                                                
cor                                                               Rosa
tamanho                                                    2,00 x 1,70
quantidade                                                         1.0
unidade                                                             un
tecido_composicao    Tecido: Microfibra; Suspensão: Ilhós; Composiç...
item                                                                  
medida                                                     2,00 x 1,70
observacoes                                                           
Name: 364, dtype: object>', '2,00 x 1,70', NULL);
