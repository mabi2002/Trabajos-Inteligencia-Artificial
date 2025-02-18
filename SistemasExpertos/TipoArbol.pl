inicio :-
    writeln("SISTEMA EXPERTO EN ARBOLES"),
    writeln("Contesta las preguntas para identificar a tu arbol."),
    (
        hipotesis(Arbol) ->
        write('Creo que hablas del arbol: '),
        write(Arbol), nl,
        descripcion(Arbol)
    ;
        writeln("Lo siento, no se a encontrado un arbol con las caracteristicas proporcionadas.")
    ),
    writeln("Terminado, Gracias por usar."),
    deshacer.
    
amapa :-
    verificar(tipo:forestal),
    verificar(altura:mide_20_a_30_m),
    verificar(hábitat:bosques_tropicales),
    verificar(copa:redonda),
    verificar(tronco:diametro_de_1_m),
    verificar(hojas:grandes_y_compuestas),
    verificar(flores:amarillas),
    verificar(frutos:alargados),
    verificar(raíces:profundas),
    verificar(crecimiento:rapido).

apomo :-
    verificar(tipo:forestal),
    verificar(altura:mide_25_a_35_m),
    verificar(hábitat:bosques_humedos),
    verificar(copa:piramidal),
    verificar(tronco:diametro_de_1_a_1_punto_5_m),
    verificar(hojas:grandes_y_simples),
    verificar(flores:amarillas),
    verificar(frutos:capsulas_lenosas),
    verificar(raíces:profundas),
    verificar(crecimiento:medio).

mauto :-
    verificar(tipo:forestal),
    verificar(altura:mide_15_a_20_m),
    verificar(hábitat:bosques_humedos),
    verificar(copa:redonda),
    verificar(tronco:diametro_de_0_punto_5_a_0_punto_8_m),
    verificar(hojas:grandes_y_coriaceas),
    verificar(flores:no_vistosas),
    verificar(frutos:redondos),
    verificar(raíces:superficiales),
    verificar(crecimiento:lento).

alamo :-
    verificar(tipo:forestal),
    verificar(altura:mide_15_a_30_m),
    verificar(hábitat:zonas_templadas),
    verificar(copa:amplia_y_redondeada),
    verificar(tronco:recto_y_cilindrico),
    verificar(hojas:lanceoladas_y_dentadas),
    verificar(flores:pequenas_y_amarillas_o_blancas),
    verificar(frutos:capsulas_con_semillas),
    verificar(raíces:muy_extendidas),
    verificar(crecimiento:rapido).

perihuete :-
    verificar(tipo:forestal),
    verificar(altura:mide_9_a_15_metros),
    verificar(hábitat:bosques_secos),
    verificar(copa:frondosa_y_redonda),
    verificar(tronco:tronco_corto_con_cortesa_rugosa_de_color_gris_oscuro),
    verificar(hojas:compuestas_de_color_verde_opaco),
    verificar(flores:pequenas_de_color_amarillo_claro_agrupada_en_racimos),
    verificar(frutos:drupa_redonda_de_color_amarillo_o_anaranjado_al_madurar),
    verificar(raíces:raiz_gruesa_y_carnosa_y_las_raices_laterales_que_son_mas_delgadas),
    verificar(crecimiento:moderado).

beco :-
    verificar(tipo:forestal),
    verificar(altura:mide_5_a_10_m),
    verificar(hábitat:bosques_humedos_tropicales_y_subtropicales),
    verificar(copa:amplia_y_redondeada_y_densa_punto),
    verificar(tronco:robusto_y_rect_y_corteza_marron_rugosa_punto),
    verificar(hojas:compuestas_y_pinnads_y_color_verde_brillante_punto),
    verificar(flores:color_morado_y_en_forma_de_racimos_colgante_punto),
    verificar(frutos:legumbres),
    verificar(raíces:profundas),
    verificar(crecimiento:moderado).

mezquite :-
    verificar(tipo:forestal),
    verificar(altura:mide_5_a_15_m),
    verificar(hábitat:zonas_aridas_y_semiaridas_con_suelos_salinos_punto),
    verificar(copa:amplia_y_abierta_y_irregular_punto),
    verificar(tronco:corto_y_grueso_y_retorcido_punto__corteza_marron_y_rugosa_punto),
    verificar(hojas:bipinnadas_y_compuestas_y_verde_palido_punto),
    verificar(flores:pequenas_color_amarillo_o_crema_y_ricas_en_nectar_punto),
    verificar(frutos:vainas),
    verificar(raíces:profundas_y_extensas),
    verificar(crecimiento:rapido).

anona :-
    verificar(tipo:frutal),
    verificar(altura:mide_4_a_8_m),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:redonda),
    verificar(tronco:diametro_de_0_punto_5_m),
    verificar(hojas:grandes_y_ovaladas),
    verificar(flores:blancas),
    verificar(frutos:redondos),
    verificar(raíces:superficiales),
    verificar(crecimiento:medio).

mango_pina :-
    verificar(tipo:frutal),
    verificar(altura:mide_10_a_15_m),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:redonda),
    verificar(tronco:diametro_de_1_m),
    verificar(hojas:largas_y_estrechas),
    verificar(flores:rosadas),
    verificar(frutos:ovalados),
    verificar(raíces:superficiales),
    verificar(crecimiento:medio).

aguacate_san_miguel :-
    verificar(tipo:frutal),
    verificar(altura:mide_10_a_15_m),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:irregular_y_menos_densa_que_el_aguacate_comun),
    verificar(tronco:robusto_y_menos_ramificado),
    verificar(hojas:ovaladas_y_verdes),
    verificar(flores:pequenas_y_verdes),
    verificar(frutos:bayas_aguacates_mas_pequenos),
    verificar(raíces:profundas),
    verificar(crecimiento:moderado).

nanchi :-
    verificar(tipo:frutal),
    verificar(altura:mide_hasta_10_metros),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:ovalada_y_abierta),
    verificar(tronco:fino_y_con_corteza_gris_y_escamosa),
    verificar(hojas:simples_y_alargadas_y_con_bordes_lisos),
    verificar(flores:si_y_pequenas_y_amarillas),
    verificar(frutos:si_y_pequenas_drupas_amarillas_y_comestibles),
    verificar(raíces:moderadamente_profundas_y_adaptadas_a_suelos_arenosos_y_secos),
    verificar(crecimiento:lento).

naranjito :-
    verificar(tipo:frutal),
    verificar(altura:mide_hasta_10_metros),
    verificar(hábitat:regiones_tropicales_y_subtropicales),
    verificar(copa:redondeada_y_densa),
    verificar(tronco:de_corteza_lisa_y_ocasionalmente_espinosa),
    verificar(hojas:simples_y_ovaladas_y_de_color_verde_brillante),
    verificar(flores:si_y_de_color_blanco_y_fragantes),
    verificar(frutos:si_y_pequenos_citricos_y_generalmente_de_color_naranja_o_amarillo),
    verificar(raíces:profundas_y_prefieren_suelos_bien_drenados),
    verificar(crecimiento:moderado).

ciruelo :-
    verificar(tipo:frutal),
    verificar(altura:mide_6_a_10_m),
    verificar(hábitat:areas_tropicales_y_subtropicales_y_zonas_calidas),
    verificar(copa:redondeada),
    verificar(tronco:recto_y_corteza_gris_o_marron),
    verificar(hojas:compuestas_y_alternas_y_pinnadas_con_foliolos_ovados),
    verificar(flores:pequenas_y_blancas_y_en_paniculas_colgantes),
    verificar(frutos:drupas_de_color_morado_a_rojizo_y_de_sabor_acido_a_dulce),
    verificar(raíces:profundas_y_resistentes_a_la_sequia),
    verificar(crecimiento:moderadamente_rapido).

ciruelo_coyotero :-
    verificar(tipo:frutal),
    verificar(altura:mide_6_a_8_m),
    verificar(hábitat:zonas_tropicales_y_subtropicales_y_areas_aridas),
    verificar(copa:redondeada_o_extendida),
    verificar(tronco:recto_y_ramificado_y_corteza_gris_a_marron),
    verificar(hojas:compuestas_y_alternas_y_pinnadas_con_foliolos_simples),
    verificar(flores:pequenas_y_de_color_blanco_a_rosado_y_en_paniculas),
    verificar(frutos:drupas_pequenas_y_de_color_verde_a_amarillo),
    verificar(raíces:profundas_y_adaptadas_a_suelos_aridos),
    verificar(crecimiento:moderado).

durazno :-
    verificar(tipo:frutal),
    verificar(altura:mide_6_a_8_metros),
    verificar(hábitat:zonas_agricolas),
    verificar(copa:abierta),
    verificar(tronco:lenoso_delgado),
    verificar(hojas:lanceoladas),
    verificar(flores:rosadas),
    verificar(frutos:durazno),
    verificar(raíces:fibrosas),
    verificar(crecimiento:rapido).

aguacate :-
    verificar(tipo:frutal),
    verificar(altura:mide_hasta_20_m),
    verificar(hábitat:tropical_y_subtropical),
    verificar(copa:amplia_y_densa),
    verificar(tronco:robusto_y_ramificado),
    verificar(hojas:ovaladas_y_oscuras),
    verificar(flores:pequenas_y_verdes),
    verificar(frutos:bayas_grandes_aguacate),
    verificar(raíces:profundas),
    verificar(crecimiento:moderado).

granada :-
    verificar(tipo:frutal),
    verificar(altura:mide_3_a_8_metros),
    verificar(hábitat:zonas_semiaridas),
    verificar(copa:redondeada_y_densa),
    verificar(tronco:corto_ramificado_desde_la_base_con_cortesa_de_color_grisaseo),
    verificar(hojas:simples_y_opuestas_de_forma_alargada_y_de_color_verde_brillante),
    verificar(flores:flores_grandes_que_aparecen_en_forma_individual_y_son_de_color_rojo_intenso),
    verificar(frutos:baya_grande_y_redondeada_con_una_cascara_gruesa_de_color_rojo_o_amarillo),
    verificar(raíces:raices_pivotantes),
    verificar(crecimiento:moderado).

arrayan :-
    verificar(tipo:frutal),
    verificar(altura:mide_3_a_8_m),
    verificar(hábitat:bosques_tropicales_y_subtropicales),
    verificar(copa:densa_y_redondeada),
    verificar(tronco:recto_y_claro_punto_anaranjado_y_con_manchas_blancas_en_ejemplares_adultos_punto_cortez_castana_en_ejemplares_jovenes_punto),
    verificar(hojas:nan),
    verificar(flores:blancas_y_solitarias_o_de_pequenos_grupos_punto),
    verificar(frutos:bayas),
    verificar(raíces:moderamente_profundas),
    verificar(crecimiento:moderado_a_rapido).

guamuchil :-
    verificar(tipo:frutal),
    verificar(altura:mide_7_a_10_metros),
    verificar(hábitat:bosque_tropicales),
    verificar(copa:ovalada_y_densa),
    verificar(tronco:tronco_recto_con_corteza_de_color_gris_y_estriada_con_lenticelas),
    verificar(hojas:compuestas_en_forma_de_espiral),
    verificar(flores:agrupadas_en_pequenos_conjuntos_de_color_blanco),
    verificar(frutos:sus_frutos_son_vainas_enroscadas_que_alcanzan_hasta_15_cm_de_largo),
    verificar(raíces:raiz_principal_de_forma_pivotgante_y_raices_secundarias_laterales),
    verificar(crecimiento:moderado).

guayabo :-
    verificar(tipo:frutal),
    verificar(altura:mide_3_a_10_metros),
    verificar(hábitat:bosques_tropiclaes),
    verificar(copa:redondeada_y_densa),
    verificar(tronco:textura_lisa_y_de_color_marron_claro_y_presenta_exfoliacion),
    verificar(hojas:simples_compuestas_de_forma_oblonga_y_color_verde),
    verificar(flores:en_pequenos_grupos_de_color_blanco_y_multiples_estambres_largos),
    verificar(frutos:baya_globosa_y_comestible_de_color_amarillo),
    verificar(raíces:raices_fibrosas_finas),
    verificar(crecimiento:rapido).

platano :-
    verificar(tipo:frutal),
    verificar(altura:mide_30_metros),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:abierta),
    verificar(tronco:tallo_herbaceo),
    verificar(hojas:grandes),
    verificar(flores:ninguna),
    verificar(frutos:bayas_platano),
    verificar(raíces:fibrosas),
    verificar(crecimiento:muy_rapido).

cardon :-
    verificar(tipo:cactus),
    verificar(altura:mide_entre_8_a_10_metros),
    verificar(hábitat:comun_en_bosques_espinosos_y_areas_deserticas),
    verificar(copa:dispersa_y_amplia),
    verificar(tronco:cilindrico_y_columnar),
    verificar(hojas:no_tiene_hojas_tipicas_en_su_lugar_y_posee_espinas_que_ayudan_a_la_reduccion_de_perdida_de_agua),
    verificar(flores:si_y_flores_grandes_de_color_blanco),
    verificar(frutos:si_y_frutos_esfericos_y_cubiertos_de_espinas_que_contienen_semillas),
    verificar(raíces:sistema_radicular_extenso_y_adaptado_para_captar_agua_en_suelos_secos),
    verificar(crecimiento:lento).

nopal :-
    verificar(tipo:cactus),
    verificar(altura:mide_1_a_5_m),
    verificar(hábitat:zonas_aridas_y_semiaridas_y_suelos_pobres),
    verificar(copa:compuesta_de_ramas_planas_o_erectas),
    verificar(tronco:suelen_ser_arbustos_con_segmentos_aplanados_o_tallos_gruesos),
    verificar(hojas:modificadas_a_espinas_y_los_segmentos_son_planos_cladodios),
    verificar(flores:grandes_y_de_color_amarillo_a_rojo_y_dependiendo_de_la_especie),
    verificar(frutos:tunas_frutos_comestibles_y_de_color_rojo_a_amarillo),
    verificar(raíces:superficiales_y_fibrosas),
    verificar(crecimiento:moderado).

pitaya :-
    verificar(tipo:cactus),
    verificar(altura:mide_1_a_2_metros),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:sin_copa_definida),
    verificar(tronco:no_tiene),
    verificar(hojas:no),
    verificar(flores:blanca_y_roja),
    verificar(frutos:pitaya),
    verificar(raíces:superficiales),
    verificar(crecimiento:rapido).

cedro_blanco :-
    verificar(tipo:maderable),
    verificar(altura:mide_hasta_30_metros),
    verificar(hábitat:prefiere_areas_humedas_y_semihumedas_selvas_tropicales_y_subtropicales),
    verificar(copa:densa_y_extendida),
    verificar(tronco:recto_y_de_corteza_gris),
    verificar(hojas:compuestas_y_pinnadas),
    verificar(flores:si_y_pequenas_y_de_color_blanco_a_rosado),
    verificar(frutos:si_y_capsulas_lenosas_que_liberan_semillas_al_abrirse),
    verificar(raíces:profundas_y_permitiendo_buena_absorcion_de_agua_en_suelos_profundos),
    verificar(crecimiento:moderado_a_rapido_en_condiciones_optimas).

ceiba :-
    verificar(tipo:tropical),
    verificar(altura:mide_entre_12_a_15_metros),
    verificar(hábitat:bosques_tropicales),
    verificar(copa:muy_ancha_y_frondosa),
    verificar(tronco:grueso_y_con_espinas_en_su_corteza_en_arboles_jovenes),
    verificar(hojas:compuestas_y_palmeadas),
    verificar(flores:si_y_grandes_y_de_color_blanco_o_rosado),
    verificar(frutos:si_y_capsulas_que_contienen_fibras_algodonosas_y_semillas),
    verificar(raíces:grandes_y_superficiales_para_el_anclaje_en_suelos_blandos),
    verificar(crecimiento:rapido_en_ambientes_humedos).

cocoboy :-
    verificar(tipo:tropical),
    verificar(altura:mide_15_a_20_m),
    verificar(hábitat:bosques_tropicales_secos_y_humedos_en_areas_subtropicales),
    verificar(copa:ancha_y_de_forma_irregular_y_densa),
    verificar(tronco:recto_y_con_corteza_de_color_gris_oscuro),
    verificar(hojas:compuestas_y_alternas_y_pinnadas_y_de_color_verde_brillante),
    verificar(flores:blancas_a_amarillas_y_en_paniculas),
    verificar(frutos:capsulas_de_20_a_30_cm_y_con_semillas_rodeadas_de_pulpa),
    verificar(raíces:profundas_y_con_un_sistema_radicular_extenso),
    verificar(crecimiento:lento_a_moderado).

papacche :-
    verificar(tipo:tropical),
    verificar(altura:mide_3_a_5_metros),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:copa_densa_de_forma_arbustiva),
    verificar(tronco:delgado_con_ramas_que_crecen_en_pares_opuestos),
    verificar(hojas:forma_lanceolada),
    verificar(flores:flores_blancas_o_amarillas),
    verificar(frutos:globosos_de_4_a_9_cm_de_diametro_con_una_cascare_verde_que_se_torna_amarillla_o_negruzca_al_madurar),
    verificar(raíces:raices_fibrosas),
    verificar(crecimiento:moderado).

palo_colorado :-
    verificar(tipo:tropical),
    verificar(altura:mide_6_a_12_m),
    verificar(hábitat:areas_tropicales_y_subtropicales_secas_y_principalmente_en_matorrales_y_bosques_caducifolios),
    verificar(copa:redonda_y_con_ramas_espinosas_y_abiertas_punto),
    verificar(tronco:corto_y_ramificado_y_grisaceo_y_espinoso_punto),
    verificar(hojas:compuestas_y_pinnadas_con_foliculos_verde_claro_punto__textura_suave_punto),
    verificar(flores:pequenas_color_amarillo_brillante),
    verificar(frutos:similar_a_la_guayaba_y_de_hasta_1_punto_5_cm_de_diametro),
    verificar(raíces:profundas),
    verificar(crecimiento:lento).

mora :-
    verificar(tipo:tropical),
    verificar(altura:mide_8_a_20_m),
    verificar(hábitat:bosques_tropicales_secos__y_humedos_y_suelos_drenados),
    verificar(copa:densa_y_redondeada_de_forma_extendida_punto),
    verificar(tronco:recto_y_fuerte_y_corteza_marron_oscuro_y_agrietada_punto),
    verificar(hojas:simples_y_alternas_y_verde_brillante_y_forma_ovalada_a_eliptica_punto),
    verificar(flores:pequenas_color_verde_a_amarillo_y_unisex_punto),
    verificar(frutos:drupas),
    verificar(raíces:profundas),
    verificar(crecimiento:moderado).

navio :-
    verificar(tipo:ornamental),
    verificar(altura:mide_entre_10_a_12_metros),
    verificar(hábitat:zonas_de_montana_y_en_ambientes_humedos),
    verificar(copa:compacta_y_frondosa),
    verificar(tronco:recto_y_de_corteza_clara),
    verificar(hojas:compuestas_y_alternas),
    verificar(flores:si_y_pequenas_y_de_color_amarillo),
    verificar(frutos:si_y_vainas_largas_y_delgadas),
    verificar(raíces:sistema_radicular_firme_y_adaptado_a_suelos_semiaridos),
    verificar(crecimiento:moderado).

arbol_tabachin :-
    verificar(tipo:ornamental),
    verificar(altura:mide_5_a_12_m),
    verificar(hábitat:tropicales_y_subtropicales),
    verificar(copa:muy_amplia_y_extendida),
    verificar(tronco:moderado_20_a_30_cm),
    verificar(hojas:caducas_y_compuestas_y_bipinnadas),
    verificar(flores:rojo_o_anaranjado),
    verificar(frutos:vaina_larga_y_plana),
    verificar(raíces:extensas_y_superficiales),
    verificar(crecimiento:rapido).

moringa :-
    verificar(tipo:arbol),
    verificar(altura:mide_5_a_12_metros),
    verificar(hábitat:zonas_tropicales_y_subtropicales),
    verificar(copa:extendida_y_esparcida),
    verificar(tronco:cilindrico_y_suculento_en_su_juventud_y_luego_se_vuelve_lenoso),
    verificar(hojas:compuestas_y_verde_claro_y_de_textura_suave),
    verificar(flores:blancas_o_amarillentas_y_fragantes),
    verificar(frutos:vainas_largas_y_cilindricas),
    verificar(raíces:gruesas_y_profundas),
    verificar(crecimiento:muy_rapido).

palo_de_brasil :-
    verificar(tipo:arbol),
    verificar(altura:mide_6_a_15_metros),
    verificar(hábitat:zonas_aridas_y_semiaridas),
    verificar(copa:extendida_y_de_forma_irregular),
    verificar(tronco:rugoso_y_con_espinas_y_de_corteza_rojiza),
    verificar(hojas:compuestas_y_bipinnadas_y_de_color_verde_oscuro),
    verificar(flores:amarillas_y_pequenas_y_en_racimos),
    verificar(frutos:legumbres_alargadas_y_delgadas),
    verificar(raíces:profundas),
    verificar(crecimiento:lento).

cacahila :-
    verificar(tipo:arbol),
    verificar(altura:mide_5_a_15_metros),
    verificar(hábitat:bosques_secos_y_zonas_tropicales_y_subtropicales),
    verificar(copa:abierta_y_extendida),
    verificar(tronco:recto_y_con_corteza_grisacea),
    verificar(hojas:compuestas_y_caducas_y_de_color_verde_brillante),
    verificar(flores:rosadas_o_lilas_y_agrupadas_en_racimos),
    verificar(frutos:vainas_largas_y_estrechas_que_contienen_semillas),
    verificar(raíces:profundas),
    verificar(crecimiento:rapido).

bonete :-
    verificar(tipo:arbusto),
    verificar(altura:mide_3_a_7_metros),
    verificar(hábitat:zonas_tropicales_y_subtropicales),
    verificar(copa:forma_piramidal_y_densa),
    verificar(tronco:delgado_y_recto),
    verificar(hojas:alargadas_y_verdes_brillantes_y_coriaceas),
    verificar(flores:amarillas_y_en_forma_de_campana_y_con_un_aroma_suave),
    verificar(frutos:capsulas_verdes_que_se_vuelven_negras_al_madurar_y_con_semillas_toxicas),
    verificar(raíces:superficiales_y_poco_profundas),
    verificar(crecimiento:rapido).

neem :-
    verificar(tipo:perenne),
    verificar(altura:mide_15_a_25_m),
    verificar(hábitat:areas_tropicales_y_subtropicales),
    verificar(copa:densa_y_redondeada),
    verificar(tronco:recto_y_corteza_gris_oscura_o_marron),
    verificar(hojas:compuestas_y_alternas_y_de_color_verde_claro),
    verificar(flores:pequenas_y_blancas_o_amarillas_y_en_paniculas),
    verificar(frutos:drupas_pequenas_y_con_semilla_aceitosa),
    verificar(raíces:profundas_y_extensas_y_muy_resistentes),
    verificar(crecimiento:rapido).

negrito :-
    verificar(tipo:perenne),
    verificar(altura:mide_5_a_8_m),
    verificar(hábitat:bosques_tropicales_secos_y_matorrales),
    verificar(copa:redondeada_y_densa),
    verificar(tronco:recto_y_corteza_gris_a_marron),
    verificar(hojas:opuestas_y_compuestas_y_de_color_verde_oscuro),
    verificar(flores:pequenas_y_lilas_o_moradas_y_en_racimos),
    verificar(frutos:pequenas_drupas_moradas),
    verificar(raíces:profundas_y_adaptadas_a_suelos_secos),
    verificar(crecimiento:moderado).

palma :-
    verificar(tipo:perenne),
    verificar(altura:mide_12_a_15_metros),
    verificar(hábitat:zonas_tropicales),
    verificar(copa:abanico),
    verificar(tronco:fibroso),
    verificar(hojas:palmeadas),
    verificar(flores:ninguna),
    verificar(frutos:variables),
    verificar(raíces:fibrosas),
    verificar(crecimiento:variable).

pinguica :-
    verificar(tipo:perenne),
    verificar(altura:mide_1_a_3_metros),
    verificar(hábitat:zonas_montanosas),
    verificar(copa:redonda),
    verificar(tronco:lenoso_retorcido),
    verificar(hojas:redondas_y_verde_oscuro),
    verificar(flores:ninguna),
    verificar(frutos:bayas),
    verificar(raíces:superficiales),
    verificar(crecimiento:lento_a_moderado).

encino :-
    verificar(tipo:perennifolio),
    verificar(altura:mide_2_a_30_metros),
    verificar(hábitat:bosques_templados_y_bosques_de_encino_a_pino),
    verificar(copa:ancha_y_densa_y_con_una_forma_redondeada_o_irregular),
    verificar(tronco:robusto_y_recto_y_de_corteza_rugosa),
    verificar(hojas:bordes_lisos_o_espinosos),
    verificar(flores:no_tiene),
    verificar(frutos:no_tiene),
    verificar(raíces:profundo_y_extendido),
    verificar(crecimiento:lento).

eucalipto :-
    verificar(tipo:perennifolio),
    verificar(altura:mide_30_a_55_metros),
    verificar(hábitat:regiones_tropicales_y_subtropicales_y_templadas_punto),
    verificar(copa:alargada_y_menos_densa),
    verificar(tronco:largo_y_recto),
    verificar(hojas:ovales_de_color_verde_grisaceo),
    verificar(flores:flores_blancas_pequenas),
    verificar(frutos:pequenos_frutos_de_color_cafe),
    verificar(raíces:profundo_y_extendido),
    verificar(crecimiento:rapido).

tepeguaje :-
    verificar(tipo:perennifolio),
    verificar(altura:mide_8_a_15_m),
    verificar(hábitat:selvas_y_bosques_tropicales_secos_y_zonas_de_transicion_entre_bosque_y_selva),
    verificar(copa:frondosa_y_redonda),
    verificar(tronco:torcido),
    verificar(hojas:foliolos_diminutos_y_compuesta),
    verificar(flores:agrupadas_en_cabezuelas_globosas),
    verificar(frutos:vainas_planas_y_delgadas),
    verificar(raíces:sistema_radicular_profundo_y_extendido),
    verificar(crecimiento:moderado_a_rapido).

toronja :-
    verificar(tipo:perennifolio),
    verificar(altura:mide_4_a_6_m),
    verificar(hábitat:climas_tropicales_y_subtropicales_y_zonas_calidas),
    verificar(copa:redondeada_y_densa),
    verificar(tronco:recto_y_cilindrico),
    verificar(hojas:perennes_y_ovales_a_elipticas),
    verificar(flores:blancas_y_aromaticas_y_4_a_5_petalos),
    verificar(frutos:hesperidio_grande_y_globoso_y_cascara_gruesa_amarilla_o_rosada),
    verificar(raíces:raiz_principal_pivotante_y_raices_laterales_extensas),
    verificar(crecimiento:moderado_y_requiere_3_a_5_anos_para_primera_produccion).

mango :-
    verificar(tipo:perennifolio),
    verificar(altura:mide_10_a_30_m),
    verificar(hábitat:climas_tropicales_y_subtropicales),
    verificar(copa:muy_frondosa_y_simetrica),
    verificar(tronco:recto_y_cilindrico_y_gruesa_y_agrietada),
    verificar(hojas:lanceoladas),
    verificar(flores:pequenas_y_agrupadas_en_paniculas),
    verificar(frutos:drupa_carnosa_y_forma_ovalada_o_redondeada_y_piel_verde_y_amarilla_y_roja_segun_variedad),
    verificar(raíces:extensas_raices_laterales),
    verificar(crecimiento:rapido_en_condiciones_optimas).

guaje :-
    verificar(tipo:caducifolio),
    verificar(altura:mide_2_a_6_metros),
    verificar(hábitat:zonas_aridas_y_semiaridas),
    verificar(copa:copa_abierta_y_dispersa),
    verificar(tronco:delgado_y_puede_ser_ligeramente_torcido),
    verificar(hojas:compuestas_y_bipinnadas_y_paripinnadas_y_opositipinnadas_de_color_verde_oscuro),
    verificar(flores:pequenas_y_esfericas_y_de_color_blanco_o_amarillo_agrupada_en_racimos),
    verificar(frutos:legumbre_recta_y_semillas_comestibles),
    verificar(raíces:relativamente_superficial),
    verificar(crecimiento:rapido).

palo_blanco :-
    verificar(tipo:caducifolio),
    verificar(altura:mide_6_a_10_metros),
    verificar(hábitat:zonas_aridas_y_semiaridas),
    verificar(copa:irregular_y_abierta),
    verificar(tronco:tronco_delgado_y_generalmente_recto_y_una_corteza_lisa),
    verificar(hojas:compuestas_y_de_forma_ovalada_y_color_verde),
    verificar(flores:blancas_o_rosadas_agrupadas_en_racimos),
    verificar(frutos:vainas_pequenas),
    verificar(raíces:superficiales_y_extendidas),
    verificar(crecimiento:moderadamente_rapido).

palo_muerto :-
    verificar(tipo:seco),
    verificar(altura:mide_1_a_4_metros),
    verificar(hábitat:zonas_tropicales_secas_y_semiaridas),
    verificar(copa:copa_irregular_y_dispersa),
    verificar(tronco:relativamente_grueso_y_suculento),
    verificar(hojas:simples_finamente_pubescentes),
    verificar(flores:blancas_con_interior_morado),
    verificar(frutos:vaina_de_color_cafe),
    verificar(raíces:profundas_y_suculentas),
    verificar(crecimiento:rapido).

copalquin :-
    verificar(tipo:medicinal),
    verificar(altura:mide_8_metros),
    verificar(hábitat:zonas_boscosas),
    verificar(copa:redonda),
    verificar(tronco:lenoso_delgado),
    verificar(hojas:elipticas_y_verde_oscuro),
    verificar(flores:blancas),
    verificar(frutos:capsulas),
    verificar(raíces:pivotante),
    verificar(crecimiento:moderado).

cipres :-
    verificar(tipo:conifera),
    verificar(altura:mide_20_a_40_metros),
    verificar(hábitat:zonas_montanosas),
    verificar(copa:piramidal),
    verificar(tronco:lenoso_alto),
    verificar(hojas:escamosas_y_verde_oscuro),
    verificar(flores:ninguna),
    verificar(frutos:galbulo),
    verificar(raíces:profundas),
    verificar(crecimiento:lento_a_moderado).

arbol_lima :-
    verificar(tipo:frutal_perenne),
    verificar(altura:mide_3_a_5_m),
    verificar(hábitat:tropical_o_subtropical),
    verificar(copa:densa_redondeada),
    verificar(tronco:delgado_15_a_20_cm),
    verificar(hojas:ovalada_con_margenes_enteros_y_simples_y_alternas_y_borde_dentado),
    verificar(flores:blanco_a_rosa),
    verificar(frutos:pequena__y_redonda),
    verificar(raíces:poco_profunda),
    verificar(crecimiento:moderado).

arbol_limon :-
    verificar(tipo:frutal_perenne),
    verificar(altura:mide_3_a_6_m),
    verificar(hábitat:calidas_y_subtropicales),
    verificar(copa:densa_redondeada),
    verificar(tronco:delgado_20_y_25_cm_punto),
    verificar(hojas:perenne),
    verificar(flores:blancas_con_tonos_rosados_y_fragantes_y_en_racimos_y_con_cinco_petalos_punto),
    verificar(frutos:fruta_ovalada),
    verificar(raíces:fibroso_y_superficial),
    verificar(crecimiento:moderado_a_rapido).

arbol_mandarina :-
    verificar(tipo:frutal_perenne),
    verificar(altura:mide_2_a_4_m),
    verificar(hábitat:subtropicales_y_calidos),
    verificar(copa:densa_redondeada),
    verificar(tronco:delgado_15_y_20_cm),
    verificar(hojas:perenne),
    verificar(flores:blancas_aromaticas),
    verificar(frutos:edonda_o_algo_achatada),
    verificar(raíces:fibroso_y_superficial),
    verificar(crecimiento:moderado).

arbol_mango_corriente :-
    verificar(tipo:frutal_perenne),
    verificar(altura:mide_10_a_30_m),
    verificar(hábitat:zonas_tropicales_y_subtropicales),
    verificar(copa:muy_densa_y_amplia_y_redondeada),
    verificar(tronco:grueso_y_de_hasta_1_m),
    verificar(hojas:perenne),
    verificar(flores:blanco_o_amarillo_palido),
    verificar(frutos:fruta_grande_y_ovalada_o_redonda),
    verificar(raíces:profundas_y_bien_desarrolladas),
    verificar(crecimiento:moderado_a_rapido).

hipotesis(amapa) :- amapa.
hipotesis(apomo) :- apomo.
hipotesis(mauto) :- mauto.
hipotesis(alamo) :- alamo.
hipotesis(perihuete) :- perihuete.
hipotesis(beco) :- beco.
hipotesis(mezquite) :- mezquite.
hipotesis(anona) :- anona.
hipotesis(mango_pina) :- mango_pina.
hipotesis(aguacate_san_miguel) :- aguacate_san_miguel.
hipotesis(nanchi) :- nanchi.
hipotesis(naranjito) :- naranjito.
hipotesis(ciruelo) :- ciruelo.
hipotesis(ciruelo_coyotero) :- ciruelo_coyotero.
hipotesis(durazno) :- durazno.
hipotesis(aguacate) :- aguacate.
hipotesis(granada) :- granada.
hipotesis(arrayan) :- arrayan.
hipotesis(guamuchil) :- guamuchil.
hipotesis(guayabo) :- guayabo.
hipotesis(platano) :- platano.
hipotesis(cardon) :- cardon.
hipotesis(nopal) :- nopal.
hipotesis(pitaya) :- pitaya.
hipotesis(cedro_blanco) :- cedro_blanco.
hipotesis(ceiba) :- ceiba.
hipotesis(cocoboy) :- cocoboy.
hipotesis(papacche) :- papacche.
hipotesis(palo_colorado) :- palo_colorado.
hipotesis(mora) :- mora.
hipotesis(navio) :- navio.
hipotesis(arbol_tabachin) :- arbol_tabachin.
hipotesis(moringa) :- moringa.
hipotesis(palo_de_brasil) :- palo_de_brasil.
hipotesis(cacahila) :- cacahila.
hipotesis(bonete) :- bonete.
hipotesis(neem) :- neem.
hipotesis(negrito) :- negrito.
hipotesis(palma) :- palma.
hipotesis(pinguica) :- pinguica.
hipotesis(encino) :- encino.
hipotesis(eucalipto) :- eucalipto.
hipotesis(tepeguaje) :- tepeguaje.
hipotesis(toronja) :- toronja.
hipotesis(mango) :- mango.
hipotesis(guaje) :- guaje.
hipotesis(palo_blanco) :- palo_blanco.
hipotesis(palo_muerto) :- palo_muerto.
hipotesis(copalquin) :- copalquin.
hipotesis(cipres) :- cipres.
hipotesis(arbol_lima) :- arbol_lima.
hipotesis(arbol_limon) :- arbol_limon.
hipotesis(arbol_mandarina) :- arbol_mandarina.
hipotesis(arbol_mango_corriente) :- arbol_mango_corriente.

descripcion(amapa) :- 
    writeln("Datos curiosos sobre el árbol: Amapa"),
    writeln("Nombre científico: Tabebuia serratifolia"),
    writeln("Familia: Bignoniaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: America Central y partes de Sudamerica"),
    writeln("Uso: Ornamental, madera"),
    writeln("Conservación: Requiere de reforestacion y proteccion en algunas regiones"),
    nl.
descripcion(apomo) :- 
    writeln("Datos curiosos sobre el árbol: Apomo"),
    writeln("Nombre científico: Cariniana estrellensis"),
    writeln("Familia: Lecythidaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: America tropical, Asia y África"),
    writeln("Uso: Alimenticio, madera"),
    writeln("Conservación: No amenazadas, cuenta con grandes cultivos"),
    nl.
descripcion(mauto) :- 
    writeln("Datos curiosos sobre el árbol: Mauto"),
    writeln("Nombre científico: Maquira coriacea"),
    writeln("Familia: Moraceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: America tropical"),
    writeln("Uso: Medicinal"),
    writeln("Conservación: No amenazadas"),
    nl.
descripcion(alamo) :- 
    writeln("Datos curiosos sobre el árbol: Álamo"),
    writeln("Nombre científico: Populus"),
    writeln("Familia: Salicaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Hemisferio norte, especialmente America del Norte y Europa"),
    writeln("Uso: Madera, ornamental"),
    writeln("Conservación: En peligro en algunas areas debido a enfermedades"),
    nl.
descripcion(perihuete) :- 
    writeln("Datos curiosos sobre el árbol: Perihuete"),
    writeln("Nombre científico: Guazuma Ulmifolia"),
    writeln("Familia: Malvaceae"),
    writeln("Adaptación: Alta "),
    writeln("Distribución: Zonas aridas y semiaridas en centro america "),
    writeln("Uso: Medicinal "),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(beco) :- 
    writeln("Datos curiosos sobre el árbol: Beco"),
    writeln("Nombre científico: Lonchocarpus guatemalensis"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Resistencia moderada a suelos secos"),
    writeln("Distribución: Mexico, America Central"),
    writeln("Uso: Ambiental, medicinal"),
    writeln("Conservación: No amenazado"),
    nl.
descripcion(mezquite) :- 
    writeln("Datos curiosos sobre el árbol: Mezquite"),
    writeln("Nombre científico: Prosopis juliflora"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Muy resistente a sequia; raices profundas"),
    writeln("Distribución: America, África, Asia"),
    writeln("Uso: Combustible, forrajero, medicinal"),
    writeln("Conservación: No amenazado"),
    nl.
descripcion(anona) :- 
    writeln("Datos curiosos sobre el árbol: Anona"),
    writeln("Nombre científico: Annona cherimola"),
    writeln("Familia: Annonaceae"),
    writeln("Adaptación: Media"),
    writeln("Distribución: America Central, Sudamerica y partes del Caribe"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: Cultivo y bancos de semillas"),
    nl.
descripcion(mango_pina) :- 
    writeln("Datos curiosos sobre el árbol: Mango Pina"),
    writeln("Nombre científico: Mangifera indica"),
    writeln("Familia: Anacardiaceae"),
    writeln("Adaptación: Media"),
    writeln("Distribución: America latina y Africa"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: No amenazadas"),
    nl.
descripcion(aguacate_san_miguel) :- 
    writeln("Datos curiosos sobre el árbol: Aguacate San Miguel"),
    writeln("Nombre científico: Parsea"),
    writeln("Familia: Lauraceae"),
    writeln("Adaptación: Moderada, necesita clima mas seco"),
    writeln("Distribución: Regiones especificas donde se cultiva el aguacate"),
    writeln("Uso: Alimenticio, especifico para ciertas preparaciones culinarias"),
    writeln("Conservación: Requiere tecnicas especiales de cultivo"),
    nl.
descripcion(nanchi) :- 
    writeln("Datos curiosos sobre el árbol: Nanchi"),
    writeln("Nombre científico: Byrsonima crassifolia"),
    writeln("Familia: Malpighiaceae"),
    writeln("Adaptación: Se adapta bien a suelos pobres y secos"),
    writeln("Distribución: America tropical"),
    writeln("Uso: Fruto comestible, utilizado en alimentos, forraje y medicina"),
    writeln("Conservación: Especies importantes para la biodiversidad; recomendada en proyectos de restauracion ambiental"),
    nl.
descripcion(naranjito) :- 
    writeln("Datos curiosos sobre el árbol: Naranjito"),
    writeln("Nombre científico: Citrus spp"),
    writeln("Familia: Rutaceae"),
    writeln("Adaptación: Adaptable a climas calidos con suelos fertiles"),
    writeln("Distribución: Regiones tropicales y subtropicales"),
    writeln("Uso: Frutal para consumo humano y medicinal"),
    writeln("Conservación: Especies comerciales con importancia economica y ecologica en agroecosistemas"),
    nl.
descripcion(ciruelo) :- 
    writeln("Datos curiosos sobre el árbol: Ciruelo"),
    writeln("Nombre científico: Spondias purpurea L."),
    writeln("Familia: Anacardiaceae"),
    writeln("Adaptación: Adaptado a suelos bien drenados, tolerante a la sequia"),
    writeln("Distribución: America tropical, principalmente en Mexico y America Central"),
    writeln("Uso: Fruto comestible, medicinal (antioxidante), madera"),
    writeln("Conservación: No esta en peligro de extincion"),
    nl.
descripcion(ciruelo_coyotero) :- 
    writeln("Datos curiosos sobre el árbol: Ciruelo coyotero"),
    writeln("Nombre científico: Spondias spp."),
    writeln("Familia: Anacardiaceae"),
    writeln("Adaptación: Resistente a la sequia y suelos poco fertiles"),
    writeln("Distribución: America tropical, particularmente en Mexico, Centroamerica y el Caribe"),
    writeln("Uso: Fruto comestible, medicinal, madera para construccion"),
    writeln("Conservación: No esta en peligro de extincion"),
    nl.
descripcion(durazno) :- 
    writeln("Datos curiosos sobre el árbol: Durazno"),
    writeln("Nombre científico: Prunus persica"),
    writeln("Familia: Rosaceas"),
    writeln("Adaptación: Adaptacion a climas templados"),
    writeln("Distribución: Regiones templadas de todo el mundo"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(aguacate) :- 
    writeln("Datos curiosos sobre el árbol: Aguacate"),
    writeln("Nombre científico: Persea americana"),
    writeln("Familia: Lauraceae"),
    writeln("Adaptación: Moderada"),
    writeln("Distribución: America tropical y subtropical"),
    writeln("Uso: Alimenticio, medicinal"),
    writeln("Conservación: Requiere proteccion contra plagas"),
    nl.
descripcion(granada) :- 
    writeln("Datos curiosos sobre el árbol: Granada"),
    writeln("Nombre científico: Punica granatum"),
    writeln("Familia: Lythraceae"),
    writeln("Adaptación: Alta "),
    writeln("Distribución: Regiones de iran y norte de la india y se a difundido en areas subtropicales como California Arizona y Mexico "),
    writeln("Uso: Frutal para consumo humano, medicinas y cosmeticos "),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(arrayan) :- 
    writeln("Datos curiosos sobre el árbol: Arrayan"),
    writeln("Nombre científico: Psidium oligospermum"),
    writeln("Familia: Myrtaceae"),
    writeln("Adaptación: Resistente a suelos pobres y arenosos"),
    writeln("Distribución: Mexico, America Central"),
    writeln("Uso: Alimenticio, medicinal, ornamental"),
    writeln("Conservación: Amenazado"),
    nl.
descripcion(guamuchil) :- 
    writeln("Datos curiosos sobre el árbol: Guamuchil"),
    writeln("Nombre científico: Pithecellobium dulce"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Alta "),
    writeln("Distribución: Regiones tropicales y subtropicales de America "),
    writeln("Uso: Consumo humano y uso medicinal "),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(guayabo) :- 
    writeln("Datos curiosos sobre el árbol: Guayabo"),
    writeln("Nombre científico: Psidium guajava"),
    writeln("Familia: Myrtaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: America central y America del sur "),
    writeln("Uso: Consumo humano y uso medicinal "),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(platano) :- 
    writeln("Datos curiosos sobre el árbol: Platano"),
    writeln("Nombre científico: Musa spp."),
    writeln("Familia: Musaceae"),
    writeln("Adaptación: Pseudo tallo grueso y fibroso"),
    writeln("Distribución: America central y sur, Asia tropical"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: Las variedades silvestres estan en peligro"),
    nl.
descripcion(cardon) :- 
    writeln("Datos curiosos sobre el árbol: Cardon"),
    writeln("Nombre científico: Pachycereus pringlei"),
    writeln("Familia: Cactaceae"),
    writeln("Adaptación: Muy resistente a sequias; se adapta bien a suelos rocosos y aridos"),
    writeln("Distribución: Zonas aridas y semiaridas de Mexico"),
    writeln("Uso: Alimento, forraje, material de construccion, cerca viva y combustible"),
    writeln("Conservación: Requiere proteccion en zonas urbanas debido a su lento crecimiento y adaptacion especifica a habitats aridos"),
    nl.
descripcion(nopal) :- 
    writeln("Datos curiosos sobre el árbol: Nopal"),
    writeln("Nombre científico: Opuntia spp."),
    writeln("Familia: Cactaceae"),
    writeln("Adaptación: Adaptado a la sequia, suelos aridos y alcalinos"),
    writeln("Distribución: America, principalmente en Mexico y el suroeste de EE. UU."),
    writeln("Uso: Alimentacion (frutos comestibles), medicinal, forraje, productos"),
    writeln("Conservación: No esta en peligro"),
    nl.
descripcion(pitaya) :- 
    writeln("Datos curiosos sobre el árbol: Pitaya"),
    writeln("Nombre científico: Hylocereus spp."),
    writeln("Familia: Cactaceas"),
    writeln("Adaptación: Espinas"),
    writeln("Distribución: America central y sur"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(cedro_blanco) :- 
    writeln("Datos curiosos sobre el árbol: Cedro Blanco"),
    writeln("Nombre científico: Cedrus deodara"),
    writeln("Familia: Pinaceae"),
    writeln("Adaptación: Prefiere suelos profundos y climas humedos"),
    writeln("Distribución: Regiones tropicales y subtropicales de America Latina"),
    writeln("Uso: Madera de alta calidad, empleada en construccion, ebanisteria y medicina"),
    writeln("Conservación: Vulnerable a la deforestacion; es importante en programas de reforestacion"),
    nl.
descripcion(ceiba) :- 
    writeln("Datos curiosos sobre el árbol: Ceiba"),
    writeln("Nombre científico: Ceiba pentandra"),
    writeln("Familia: Malvaceae"),
    writeln("Adaptación: Tolerante a suelos humedos; se desarrolla bien en climas tropicales"),
    writeln("Distribución: Selvas humedas de Mexico y Centroamerica"),
    writeln("Uso: Fuente de sombra, madera, y las fibras del fruto se utilizan en textiles"),
    writeln("Conservación: Protegida en areas naturales; enfrenta presion por deforestacion"),
    nl.
descripcion(cocoboy) :- 
    writeln("Datos curiosos sobre el árbol: Cocoboy"),
    writeln("Nombre científico: Swietenia humilis Zucc."),
    writeln("Familia: Meliaceae"),
    writeln("Adaptación: Adaptado a suelos bien drenados, tolera sequias moderadas"),
    writeln("Distribución: America tropical, particularmente en Mexico y Centroamerica"),
    writeln("Uso: Madera para construccion, medicinal (antibiotico)"),
    writeln("Conservación: En peligro debido a la deforestacion"),
    nl.
descripcion(papacche) :- 
    writeln("Datos curiosos sobre el árbol: Papacche"),
    writeln("Nombre científico: Randia "),
    writeln("Familia: Rubiaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Regiones semiaridas de mexico "),
    writeln("Uso: Medicinales y consumo humano "),
    writeln("Conservación: No esta en peligro "),
    nl.
descripcion(palo_colorado) :- 
    writeln("Datos curiosos sobre el árbol: Palo colorado"),
    writeln("Nombre científico: Coulteria platyloba"),
    writeln("Familia: Myrtaceae"),
    writeln("Adaptación: Resistente a sequias"),
    writeln("Distribución: Desde Mexico hasta Bolivia."),
    writeln("Uso: Material de construccion"),
    writeln("Conservación: Bajo presion por perdida de habitat"),
    nl.
descripcion(mora) :- 
    writeln("Datos curiosos sobre el árbol: Mora"),
    writeln("Nombre científico: Maclura tinctoria"),
    writeln("Familia: Moraceae"),
    writeln("Adaptación: Tolerante a inundaciones y suelos arcillosos"),
    writeln("Distribución: Mexico, America Central y del Sur"),
    writeln("Uso: Material de construccion, medicinal"),
    writeln("Conservación: Ligeramente amenazado"),
    nl.
descripcion(navio) :- 
    writeln("Datos curiosos sobre el árbol: Navio"),
    writeln("Nombre científico: Tabebuia rosea"),
    writeln("Familia: Bignoniaceae"),
    writeln("Adaptación: Resistente a sequia, adaptado a bosques secos"),
    writeln("Distribución: Mexico, especialmente en zonas de bosque seco"),
    writeln("Uso: Fuente de sombra, medicina y alimento"),
    writeln("Conservación: Utilizado en programas de reforestacion y proteccion de suelos en areas aridas"),
    nl.
descripcion(arbol_tabachin) :- 
    writeln("Datos curiosos sobre el árbol: Arbol tabachin"),
    writeln("Nombre científico: Delonix regia"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: se adapta bien a climas tropicales y subtropicales"),
    writeln("Distribución: En Mexico, el Caribe, America Central y partes de Sudamerica, asi como en regiones calidas de Asia y África"),
    writeln("Uso: Medicinal, fuente de sombra"),
    writeln("Conservación: En su region de origen, Madagascar, esta clasificado como vulnerable. Fuera de su region, es ampliamente cultivado como ornamental."),
    nl.
descripcion(moringa) :- 
    writeln("Datos curiosos sobre el árbol: Moringa"),
    writeln("Nombre científico: Moringa oleifera Lam."),
    writeln("Familia: Moringaceae"),
    writeln("Adaptación: Alta tolerancia a la sequia y suelos pobres"),
    writeln("Distribución: Nativa de India, pero cultivada en zonas tropicales de todo el mundo"),
    writeln("Uso: Medicinal, forrajera, fuente de sombra"),
    writeln("Conservación: No amenazada, ampliamente cultivada por sus multiples beneficios"),
    nl.
descripcion(palo_de_brasil) :- 
    writeln("Datos curiosos sobre el árbol: Palo de Brasil"),
    writeln("Nombre científico: Haematoxylum brasiletto"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Alta tolerancia a la sequia"),
    writeln("Distribución: America tropical y subtropical"),
    writeln("Uso: Medicinal, material de construccion"),
    writeln("Conservación: Algunas poblaciones estan amenazadas por la extraccion excesiva"),
    nl.
descripcion(cacahila) :- 
    writeln("Datos curiosos sobre el árbol: Cacahila"),
    writeln("Nombre científico: Karwinskia latifolia Standl."),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Tolerante a suelos pobres y sequia"),
    writeln("Distribución: America Central, Caribe y Mexico"),
    writeln("Uso: Medicinal"),
    writeln("Conservación: No amenazada, es de facil propagacion"),
    nl.
descripcion(bonete) :- 
    writeln("Datos curiosos sobre el árbol: Bonete"),
    writeln("Nombre científico: Cnidoscolus rangel"),
    writeln("Familia: Apocynaceae"),
    writeln("Adaptación: Resistente a la sequia y a suelos pobres"),
    writeln("Distribución: Regiones tropicales de America y África"),
    writeln("Uso: Alimenticia, fuente de sombra"),
    writeln("Conservación: No amenazada, crece facilmente en zonas tropicales"),
    nl.
descripcion(neem) :- 
    writeln("Datos curiosos sobre el árbol: Neem"),
    writeln("Nombre científico: Azadirachta indica A. Juss"),
    writeln("Familia: Meliaceae"),
    writeln("Adaptación: Muy resistente a la sequia, crece en suelos pobres"),
    writeln("Distribución: Originario de la India, pero se ha expandido por Asia, África y America"),
    writeln("Uso: Medicinal (antibacteriano, antiparasitario), biopesticida, madera"),
    writeln("Conservación: No esta en peligro"),
    nl.
descripcion(negrito) :- 
    writeln("Datos curiosos sobre el árbol: Negrito"),
    writeln("Nombre científico: Vitex pyramidata B.L. Rob"),
    writeln("Familia: labiatae"),
    writeln("Adaptación: Adaptado a suelos secos y aridos"),
    writeln("Distribución: America Central y del Sur, especialmente Mexico"),
    writeln("Uso: Medicinal (antinflamatorio, antibiotico), madera"),
    writeln("Conservación: No en peligro, pero se ve amenazado por la deforestacion"),
    nl.
descripcion(palma) :- 
    writeln("Datos curiosos sobre el árbol: Palma"),
    writeln("Nombre científico: Sabal Spp."),
    writeln("Familia: Arecaceae"),
    writeln("Adaptación: Resistencia a suelos salinos"),
    writeln("Distribución: Zonas tropicales y subtropicales"),
    writeln("Uso: Alimenticio"),
    writeln("Conservación: La mayoria no estan en peligro"),
    nl.
descripcion(pinguica) :- 
    writeln("Datos curiosos sobre el árbol: Pinguica"),
    writeln("Nombre científico: Arctostaphylos pungens"),
    writeln("Familia: Ericaceae"),
    writeln("Adaptación: Corteza fina"),
    writeln("Distribución: Mexico y suroeste de Estados unidos"),
    writeln("Uso: Medicinal"),
    writeln("Conservación: No esta enpeligro"),
    nl.
descripcion(encino) :- 
    writeln("Datos curiosos sobre el árbol: Encino"),
    writeln("Nombre científico: Quercus spp"),
    writeln("Familia: Fagaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Zonas montanosas (600 - 2500 m. s. n. m)"),
    writeln("Uso: Material de construccion, lena, forraje, sombra, medicinal, paisajismo y erosion del suelo"),
    writeln("Conservación: Requiere de reforestacion y proteccion en algunas regiones"),
    nl.
descripcion(eucalipto) :- 
    writeln("Datos curiosos sobre el árbol: Eucalipto"),
    writeln("Nombre científico: Eucalyptus globulosus"),
    writeln("Familia: Myrtaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Áreas templadas, originario de Australia."),
    writeln("Uso: Material de construccion, medicinal, manufactura de aceite a traves de sus hojas, fabricacion de papel y eliminacion de humedad en zonas pantanosas"),
    writeln("Conservación: No amenazado"),
    nl.
descripcion(tepeguaje) :- 
    writeln("Datos curiosos sobre el árbol: Tepeguaje"),
    writeln("Nombre científico: Lysiloma Acapulcense"),
    writeln("Familia: Fabaceae "),
    writeln("Adaptación: Resistente a sequias prolongadas, tolera suelos pobres y pedregosos"),
    writeln("Distribución: Mexico (principalmente en estados norte/central), Centroamerica, Norte de sudamerica"),
    writeln("Uso: Construccion, y carpinteria, lena y carbon"),
    writeln("Conservación: No se encuentra en categoria de riesgo"),
    nl.
descripcion(toronja) :- 
    writeln("Datos curiosos sobre el árbol: Toronja"),
    writeln("Nombre científico: Citrus paradisi"),
    writeln("Familia: Rutaceae"),
    writeln("Adaptación: Necesita climas calidos, No tolera heladas severas, Requiere suelos bien drenados"),
    writeln("Distribución: Originaria de las Indias Occidentales (Barbados), Cultivada en regiones tropicales y subtropicales"),
    writeln("Uso: Fruto para consumo fresco, Produccion de jugos y bebidas, Mermeladas y conservas, Aceites esenciales"),
    writeln("Conservación: No esta en riesgo como especie, Cultivada extensivamente"),
    nl.
descripcion(mango) :- 
    writeln("Datos curiosos sobre el árbol: Mango"),
    writeln("Nombre científico: Mangifera indica"),
    writeln("Familia: Anacardiaceae"),
    writeln("Adaptación: Tolerante a sequias una vez establecido"),
    writeln("Distribución: Originario del sur de Asia (India), Cultivado en todas las regiones tropicales"),
    writeln("Uso: Madera para construccion, Fruto para consumo, jugos y nectares"),
    writeln("Conservación: No esta en riesgo como especie, Ampliamente cultivado"),
    nl.
descripcion(guaje) :- 
    writeln("Datos curiosos sobre el árbol: Guaje"),
    writeln("Nombre científico: Leucaena spp"),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Regiones tropicales y subtropicales"),
    writeln("Uso: Medicinal, artesanal, forraje, abono verde, reforestacion"),
    writeln("Conservación: No amenazado"),
    nl.
descripcion(palo_blanco) :- 
    writeln("Datos curiosos sobre el árbol: Palo blanco"),
    writeln("Nombre científico: Piscidia mollis "),
    writeln("Familia: Fabaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Valles y parte baja de la Sierra Madre Occidental (700 m. s. n. m)"),
    writeln("Uso: Ambiental, atrae polinizadores, reforestacion, material, carpinteria, medicinal"),
    writeln("Conservación: Requiere proteccion en zonas aridas"),
    nl.
descripcion(palo_muerto) :- 
    writeln("Datos curiosos sobre el árbol: Palo muerto"),
    writeln("Nombre científico: Ipomoea arborescens"),
    writeln("Familia: Convolvulaceae"),
    writeln("Adaptación: Alta"),
    writeln("Distribución: Regiones calidas, zonas bajas y areas montanosas."),
    writeln("Uso: Ambiental, combustible, medicinal, material de construccion, forraje"),
    writeln("Conservación: No amenazado"),
    nl.
descripcion(copalquin) :- 
    writeln("Datos curiosos sobre el árbol: Copalquin"),
    writeln("Nombre científico: Hintonia latiflora"),
    writeln("Familia: Rubiaceae"),
    writeln("Adaptación: Resistencia a sequias"),
    writeln("Distribución: Mexico, America Central"),
    writeln("Uso: Medicinal"),
    writeln("Conservación: Vulnerable"),
    nl.
descripcion(cipres) :- 
    writeln("Datos curiosos sobre el árbol: Cipres"),
    writeln("Nombre científico: Cupressus"),
    writeln("Familia: Cupresaceas"),
    writeln("Adaptación: Hojas escamosas"),
    writeln("Distribución: America del norte, Europa"),
    writeln("Uso: Jardineria"),
    writeln("Conservación: Algunas especies estan en amenazadas"),
    nl.
descripcion(arbol_lima) :- 
    writeln("Datos curiosos sobre el árbol: Arbol Lima"),
    writeln("Nombre científico: Citrus aurantiifolia"),
    writeln("Familia: Rutaceae"),
    writeln("Adaptación: Se adaptan muy bien al frio, pero su floracion puede verse danada por las heladas tardias y puede resistir a breves sequias"),
    writeln("Distribución: Originario del sureste de la India y actualmente se encuentra en regiones tropicales de America, especialmente en Mexico y America Central"),
    writeln("Uso: Alimento, medicinal fuente de sombra"),
    writeln("Conservación: No esta en peligro de extincion"),
    nl.
descripcion(arbol_limon) :- 
    writeln("Datos curiosos sobre el árbol: Arbol Limon"),
    writeln("Nombre científico: Citrus limon"),
    writeln("Familia: Rutaceae"),
    writeln("Adaptación: sensible a las helada y se adapta mejor a climas tropicales y subtropicales, donde las temperaturas no descienden demasiado."),
    writeln("Distribución: El Mediterraneo, America Latina, el sur de Estados Unidos, Espana"),
    writeln("Uso: Alimento, medicinal fuente de sombra"),
    writeln("Conservación: No esta en peligro de extincion"),
    nl.
descripcion(arbol_mandarina) :- 
    writeln("Datos curiosos sobre el árbol: Arbol Mandarina"),
    writeln("Nombre científico:  Citrus reticulata"),
    writeln("Familia: Rutaceae"),
    writeln("Adaptación: se adapta bien a una variedad de suelos, siempre que esten bien drenados, es resistente a climas calidos y secos"),
    writeln("Distribución: Originario de asia pero cultivado en Espana, China, Japon, Brasil, Mexico, y el sur de Estados Unidos actualmente"),
    writeln("Uso: Alimento, medicinal fuente de sombra"),
    writeln("Conservación: No esta en peligro de extincion"),
    nl.
descripcion(arbol_mango_corriente) :- 
    writeln("Datos curiosos sobre el árbol: Arbol Mango Corriente"),
    writeln("Nombre científico: Mangifera indica"),
    writeln("Familia: Anacardiaceae"),
    writeln("Adaptación: es muy resistente al calor y se adapta bien a climas tropicales y subtropicales"),
    writeln("Distribución: En paises de Asia, África, America Latina, el Caribe, y algunas regiones calidas de Estados Unidos."),
    writeln("Uso: Alimento, fuente de sombra"),
    writeln("Conservación: No esta en peligro de extincion, aunque la variabilidad genetica de las variedades silvestres esta en declive."),
    nl.


preguntar(Pregunta) :-
write('¿Su árbol tiene la siguiente característica? '),
write(Pregunta),
write('? '),
read(Respuesta),
nl,
((Respuesta == si) -> assert(si(Pregunta)) ;
assert(no(Pregunta)), fail).

:- dynamic si/1,no/1.

verificar(S) :-
(si(S) -> true ;
(no(S) -> fail ;
preguntar(S))).

deshacer :- retract(si(_)), fail.
deshacer :- retract(no(_)), fail.
deshacer.