GDPC                                                                            (   @   res://.import/Bolsa.png-afecddd2ff0bee60aa81954c1e8864ff.stex    k            ��?D�>(�z���<ffP   res://.import/FundoBrancoBordaPreta.png-ae620fcd2f8ba9a4aa9cff39a40306be.stex   �p      �      /�b�; �e���8��tD   res://.import/MaqnaCostura.png-a14e5ff3380a31631308cc8a1cc1c70f.stexP      r      m�Y�:�k�8j���r�b@   res://.import/Porta.png-1aab28c8291cd570e229e88dddba8ca1.stex   ��      �      �i�劧�9 ��۞ȋ�<   res://.import/Seta.png-593fb9d3ec62d27d5a37011db2c52500.stex �      K      F$�ڎ>K���v���@   res://.import/Skills.png-a7af7010c309f22d4009357b83355854.stex  ��      Ca      ^78�$�_5nҸ��><   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      U      -��`�0��x�5�[<   res://.import/icon.png-64cccac53b0e1345f4a7136e4b735ea4.stex�      U      -��`�0��x�5�[,   res://Cenas/CenasJogaveis/BuscaPalavras.tscn�      �      �؆'�1�U���8o+��,   res://Cenas/CenasJogaveis/QuartoCostura.tscn      �      �\����s�ce����i�0   res://Cenas/CenasJogaveis/QuartoFrases.gd.remap �5     ;       X���&�/����jxA�?,   res://Cenas/CenasJogaveis/QuartoFrases.gdc  �.      �      �,s�܁n�]E���f�,   res://Cenas/CenasJogaveis/QuartoFrases.tscn �0      �      ����2mR�> 7��X�[$   res://Cenas/CenasMenu/Corredor.tscn �<      	      P +�������|$   res://Cenas/CenasMenu/Creditos.tscn �E      )      d������� <��(   res://Cenas/CenasMenu/MenuPrincipal.tscn N            ��C���C�E�S�K��O   res://PlayerTest.gd.remap    6     %       �����P�Б�ϼ�U   res://PlayerTest.gdc]      �      Y��yM���e𶕓$   res://Scripts/BuscaPalavras.gd.remapP6     0       >�ڔs�I�%��w�    res://Scripts/BuscaPalavras.gdc �_      �      �q7�(����E�2$   res://Scripts/ChangeScene.gd.remap  �6     .       � ��]h4���B<b�m�    res://Scripts/ChangeScene.gdc   �a      C      �i}H8�/��l���(   res://Scripts/ChangeScenePorta.gd.remap �6     3       �	�7n�9J9w3i$   res://Scripts/ChangeScenePorta.gdc  �c      �      ���x��> �K�    res://Scripts/Palavras.gd.remap �6     +       ��B��>� 
�v��D   res://Scripts/Palavras.gdc  pf      �      �4� ����.�{�|�$   res://Scripts/QuartoCostura.gd.remap 7     0       �H\�1~|܉���0    res://Scripts/QuartoCostura.gdc `i      �      1,(=��^�/�˩(   res://SpritesBlocagem/Bolsa.png.import  @n      �      �'�QC	�T�owsc�8   res://SpritesBlocagem/FundoBrancoBordaPreta.png.import  �|      �      ��}�wq���KwLɊ�0   res://SpritesBlocagem/MaqnaCostura.png.import   З      �      qc� ���.����W(   res://SpritesBlocagem/Porta.png.import  `�      �      N4˗]gF�}d��^+(   res://SpritesBlocagem/Seta.png.import   P�      �      ,��M�p��c��M�P*    res://SpritesBlocagem/icon.png  P7     �      G1?��z�c��vN��(   res://SpritesBlocagem/icon.png.import   @�      �      �o>��#貄���   res://default_env.tres  п      �       um�`�N��<*ỳ�8   res://icon.png.import   ��      �      "�Պ����$��㹌    res://images/Skills.png.import  �1     �      W�h.�9p�㖝��   res://project.binary@D     u      ���*Z�Dn��"��   res://scenes/menu.tscn  p4     h      �x�A5��T�2�        [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/BuscaPalavras.gd" type="Script" id=1]
[ext_resource path="res://SpritesBlocagem/Seta.png" type="Texture" id=2]
[ext_resource path="res://SpritesBlocagem/Bolsa.png" type="Texture" id=3]
[ext_resource path="res://SpritesBlocagem/FundoBrancoBordaPreta.png" type="Texture" id=4]
[ext_resource path="res://Scripts/Palavras.gd" type="Script" id=5]

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )

[node name="Voltar" type="Button" parent="."]
margin_left = 9.2692
margin_top = 513.222
margin_right = 161.269
margin_bottom = 605.222
rect_scale = Vector2( 1, 0.8 )
icon = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bolsa" type="Button" parent="."]
margin_left = 935.796
margin_top = 507.429
margin_right = 1039.8
margin_bottom = 617.429
rect_scale = Vector2( 0.7, 0.7 )
icon = ExtResource( 3 )
__meta__ = {
"_edit_group_": true,
"_edit_use_anchors_": false
}

[node name="PalavrasPopUp" type="Control" parent="."]
visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="PalavrasPopUp"]
position = Vector2( 525.906, 265.2 )
scale = Vector2( 0.6, 0.5 )
texture = ExtResource( 4 )

[node name="Voltar2" type="Button" parent="PalavrasPopUp"]
margin_left = 387.953
margin_top = 394.481
margin_right = 539.953
margin_bottom = 486.481
rect_scale = Vector2( 0.5, 0.6 )
icon = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra1" type="KinematicBody2D" parent="."]
position = Vector2( 561.569, 49.1787 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra1"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra1"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra2" type="KinematicBody2D" parent="."]
position = Vector2( 349.039, 159.012 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra2"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra2"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra3" type="KinematicBody2D" parent="."]
position = Vector2( 193.747, 48.0832 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra3"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra3"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra4" type="KinematicBody2D" parent="."]
position = Vector2( 787.468, 74.1837 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra4"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra4"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra5" type="KinematicBody2D" parent="."]
position = Vector2( 509.468, 431.184 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra5"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra5"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Palavra6" type="KinematicBody2D" parent="."]
position = Vector2( 74.4679, 262.184 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Palavra" type="Button" parent="Palavra6"]
margin_right = 109.0
margin_bottom = 39.0002
text = "Palavra6"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Voltar" to="." method="_on_Voltar_pressed"]
[connection signal="pressed" from="Bolsa" to="." method="_on_Bolsa_pressed"]
[connection signal="pressed" from="PalavrasPopUp/Voltar2" to="." method="_on_Voltar2_pressed"]
[connection signal="pressed" from="Palavra1/Palavra" to="Palavra1" method="_on_Palavra_pressed"]
[connection signal="pressed" from="Palavra2/Palavra" to="Palavra2" method="_on_Palavra_pressed"]
[connection signal="pressed" from="Palavra3/Palavra" to="Palavra3" method="_on_Palavra_pressed"]
[connection signal="pressed" from="Palavra4/Palavra" to="Palavra4" method="_on_Palavra_pressed"]
[connection signal="pressed" from="Palavra5/Palavra" to="Palavra5" method="_on_Palavra_pressed"]
[connection signal="pressed" from="Palavra6/Palavra" to="Palavra6" method="_on_Palavra_pressed"]
         [gd_scene load_steps=6 format=2]

[ext_resource path="res://SpritesBlocagem/FundoBrancoBordaPreta.png" type="Texture" id=1]
[ext_resource path="res://SpritesBlocagem/MaqnaCostura.png" type="Texture" id=2]
[ext_resource path="res://SpritesBlocagem/Seta.png" type="Texture" id=3]
[ext_resource path="res://SpritesBlocagem/Bolsa.png" type="Texture" id=4]
[ext_resource path="res://Scripts/QuartoCostura.gd" type="Script" id=5]

[node name="Node2D" type="Node2D"]
script = ExtResource( 5 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 468.63, 301.128 )
scale = Vector2( 1.30407, 0.701479 )
texture = ExtResource( 1 )

[node name="MaquinaCostura" type="Button" parent="."]
margin_left = 380.164
margin_top = 349.14
margin_right = 617.164
margin_bottom = 580.14
rect_scale = Vector2( 0.7, 0.7 )
icon = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Voltar2" type="Button" parent="."]
margin_left = 191.881
margin_top = 512.307
margin_right = 343.881
margin_bottom = 604.307
rect_scale = Vector2( 0.5, 0.5 )
icon = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CosturaPopUp" type="Control" parent="."]
visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="CosturaPopUp"]
position = Vector2( 469.543, 302.554 )
scale = Vector2( 1.23192, 0.669833 )
texture = ExtResource( 1 )

[node name="Cores" type="Sprite" parent="CosturaPopUp"]
position = Vector2( 306.357, 184.866 )
scale = Vector2( 0.308553, 0.257869 )
texture = ExtResource( 1 )

[node name="FormatoRetalhos" type="Sprite" parent="CosturaPopUp"]
position = Vector2( 642.641, 178.935 )
scale = Vector2( 0.316562, 0.259529 )
texture = ExtResource( 1 )

[node name="Preview" type="Sprite" parent="CosturaPopUp"]
position = Vector2( 474.022, 361.297 )
scale = Vector2( 0.559503, 0.102568 )
texture = ExtResource( 1 )

[node name="Voltar" type="Button" parent="CosturaPopUp"]
margin_left = 191.881
margin_top = 512.307
margin_right = 343.881
margin_bottom = 604.307
rect_scale = Vector2( 0.5, 0.5 )
icon = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Costurar" type="Button" parent="CosturaPopUp"]
margin_left = 297.275
margin_top = 449.067
margin_right = 426.275
margin_bottom = 485.067
text = "Costurar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Recomecar" type="Button" parent="CosturaPopUp"]
margin_left = 499.212
margin_top = 448.188
margin_right = 628.212
margin_bottom = 484.188
text = "Recomeçar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bolsa" type="Button" parent="CosturaPopUp"]
margin_left = 444.2
margin_top = 145.249
margin_right = 548.2
margin_bottom = 255.249
rect_scale = Vector2( 0.5, 0.5 )
icon = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Control" type="Control" parent="CosturaPopUp"]
margin_right = 40.0
margin_bottom = 40.0

[node name="FundoBrancoBordaPreta2" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 0, 1, 0.109804, 1 )
position = Vector2( 339.862, 115.819 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )

[node name="FundoBrancoBordaPreta3" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 0.85098, 1, 0, 1 )
position = Vector2( 262.08, 171.378 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )

[node name="FundoBrancoBordaPreta4" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 0.0196078, 0.0823529, 1, 1 )
position = Vector2( 339.862, 176.934 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )

[node name="FundoBrancoBordaPreta6" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 0.901961, 0.596078, 0.0666667, 1 )
position = Vector2( 339.862, 232.493 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )

[node name="FundoBrancoBordaPreta5" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 0.752941, 0.141176, 0.572549, 1 )
position = Vector2( 262.08, 232.493 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )

[node name="FundoBrancoBordaPreta" type="Sprite" parent="CosturaPopUp/Control"]
modulate = Color( 1, 0, 0, 1 )
position = Vector2( 261.286, 115.025 )
scale = Vector2( 0.0802576, 0.0534922 )
texture = ExtResource( 1 )
[connection signal="pressed" from="MaquinaCostura" to="." method="_on_MaquinaCostura_pressed"]
[connection signal="pressed" from="Voltar2" to="." method="_on_Voltar2_pressed"]
[connection signal="pressed" from="CosturaPopUp/Voltar" to="." method="_on_Voltar_pressed"]
       GDSC   
         D      ���ӄ�   ��������Ӈ�������Ҷ�   �������Ӷ���   ��������   ��������ӄ�������Ҷ�   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���   ���������Ą�������Ҷ   ���Ӷ���      RetalhoPopUp   #   res://Cenas/CenasMenu/Corredor.tscn                    	                        "      #   	   )   
   2      3      9      B      3YY0�  PQV�  �  PQT�  PQYY0�  PQV�  �  PQT�  PQYY0�  PQV�  �  PQT�  P�  QYY0�  PQV�  �  PQT�	  PQY`         [gd_scene load_steps=5 format=2]

[ext_resource path="res://SpritesBlocagem/FundoBrancoBordaPreta.png" type="Texture" id=1]
[ext_resource path="res://SpritesBlocagem/Bolsa.png" type="Texture" id=2]
[ext_resource path="res://SpritesBlocagem/Seta.png" type="Texture" id=3]
[ext_resource path="res://Cenas/CenasJogaveis/QuartoFrases.gd" type="Script" id=4]

[node name="Node2D" type="Node2D"]
script = ExtResource( 4 )

[node name="Fundo" type="Sprite" parent="."]
position = Vector2( 491.511, 299.699 )
scale = Vector2( 1.25218, 0.68836 )
texture = ExtResource( 1 )

[node name="FundoFrases" type="Sprite" parent="."]
position = Vector2( 491.71, 249.406 )
scale = Vector2( 1.12082, 0.481104 )
texture = ExtResource( 1 )

[node name="Frase1" type="Button" parent="."]
margin_left = 230.0
margin_top = 71.4002
margin_right = 751.0
margin_bottom = 116.4
text = "O sertão é _________"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Frase2" type="Button" parent="."]
margin_left = 228.218
margin_top = 137.327
margin_right = 749.218
margin_bottom = 182.327
text = "A vida no sertão é __________"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bolsa" type="Button" parent="."]
margin_left = 719.188
margin_top = 500.435
margin_right = 823.188
margin_bottom = 610.435
rect_scale = Vector2( 0.5, 0.5 )
icon = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Voltar" type="Button" parent="."]
margin_left = 199.561
margin_top = 493.558
margin_right = 351.561
margin_bottom = 585.558
rect_scale = Vector2( 0.8, 0.6 )
icon = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RetalhoPopUp" type="Control" parent="."]
visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="FundoBrancoBordaPreta" type="Sprite" parent="RetalhoPopUp"]
position = Vector2( 483.634, 247.248 )
scale = Vector2( 0.733302, 0.386887 )
texture = ExtResource( 1 )

[node name="Voltar2" type="Button" parent="RetalhoPopUp"]
margin_left = 316.429
margin_top = 334.737
margin_right = 468.429
margin_bottom = 426.737
rect_scale = Vector2( 0.8, 0.6 )
icon = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GerarRetalho" type="Button" parent="RetalhoPopUp"]
margin_left = 510.119
margin_top = 342.714
margin_right = 662.119
margin_bottom = 408.714
rect_scale = Vector2( 0.8, 0.6 )
text = "Gerar Retalho"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="RetalhoPopUp"]
modulate = Color( 0, 0, 0, 1 )
margin_left = 332.621
margin_top = 138.654
margin_right = 538.621
margin_bottom = 152.654
rect_scale = Vector2( 1.5, 2 )
text = "A frase vai aqui ____________"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Frase1" to="." method="_on_Frase1_pressed"]
[connection signal="pressed" from="Frase2" to="." method="_on_Frase2_pressed"]
[connection signal="pressed" from="Voltar" to="." method="_on_Voltar_pressed"]
[connection signal="pressed" from="RetalhoPopUp/Voltar2" to="." method="_on_Voltar2_pressed"]
         [gd_scene load_steps=3 format=2]

[ext_resource path="res://SpritesBlocagem/Porta.png" type="Texture" id=1]
[ext_resource path="res://Scripts/ChangeScenePorta.gd" type="Script" id=2]

[node name="Node2D" type="Node2D"]
script = ExtResource( 2 )

[node name="Label" type="Label" parent="."]
margin_left = 162.53
margin_top = 370.417
margin_right = 256.53
margin_bottom = 384.417
rect_scale = Vector2( 1.5, 1.5 )
text = "Busca palavras"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label2" type="Label" parent="."]
margin_left = 451.052
margin_top = 370.417
margin_right = 566.052
margin_bottom = 384.417
rect_scale = Vector2( 1.5, 1.5 )
text = "Quarto de costura"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label3" type="Label" parent="."]
margin_left = 758.472
margin_top = 369.157
margin_right = 881.472
margin_bottom = 400.157
rect_scale = Vector2( 1.5, 1.5 )
text = "Quarto montagens 
      das frases"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VoltarMenu" type="Button" parent="."]
margin_left = 446.3
margin_top = 519.52
margin_right = 600.3
margin_bottom = 566.52
text = "Voltar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PortaBuscaPalavras" type="Button" parent="."]
margin_left = 135.0
margin_top = 22.6652
margin_right = 647.0
margin_bottom = 832.665
rect_scale = Vector2( 0.35, 0.4 )
icon = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PortaQuartoCostura" type="Button" parent="."]
margin_left = 450.022
margin_top = 30.6742
margin_right = 962.022
margin_bottom = 840.674
rect_scale = Vector2( 0.35, 0.4 )
icon = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PortaQuartoMontagens" type="Button" parent="."]
margin_left = 754.366
margin_top = 28.0045
margin_right = 1266.37
margin_bottom = 838.005
rect_scale = Vector2( 0.35, 0.4 )
icon = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="VoltarMenu" to="." method="_on_VoltarMenu_pressed"]
[connection signal="pressed" from="PortaBuscaPalavras" to="." method="_on_PortaBuscaPalavras_pressed"]
[connection signal="pressed" from="PortaQuartoCostura" to="." method="_on_PortaQuartoCostura_pressed"]
[connection signal="pressed" from="PortaQuartoMontagens" to="." method="_on_PortaQuartoMontagens_pressed"]
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://SpritesBlocagem/FundoBrancoBordaPreta.png" type="Texture" id=1]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 2.3811
margin_top = -1.5874
margin_right = 2.3811
margin_bottom = -1.5874
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 512.188, 324.407 )
scale = Vector2( 0.964962, 0.356718 )
texture = ExtResource( 1 )

[node name="Voltar" type="Button" parent="."]
margin_left = 426.0
margin_top = 421.0
margin_right = 558.0
margin_bottom = 454.0
text = "Voltar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
modulate = Color( 0, 0, 0, 1 )
anchor_left = 0.336
anchor_top = 0.325
anchor_right = 0.662
anchor_bottom = 0.412
margin_left = 0.935974
margin_top = -1.52588e-05
margin_right = -221.888
margin_bottom = 26.8
rect_scale = Vector2( 3, 3.338 )
text = "Desenvolvedores
"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label3" type="Label" parent="Label"]
modulate = Color( 0, 0, 0, 1 )
anchor_left = 0.037
anchor_top = 0.324
anchor_right = 0.188
anchor_bottom = 0.428
margin_left = 15.8482
margin_top = -0.362881
margin_right = 91.0872
margin_bottom = 10.4131
rect_scale = Vector2( 0.6, 0.6 )
text = "  Camila Murta"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label2" type="Label" parent="Label"]
modulate = Color( 0, 0, 0, 1 )
anchor_left = 0.037
anchor_top = 0.486
anchor_right = 0.188
anchor_bottom = 0.59
margin_left = 15.8482
margin_top = -0.376183
margin_right = 100.087
margin_bottom = 10.3998
rect_scale = Vector2( 0.6, 0.6 )
text = " Fernando Nigro"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label4" type="Label" parent="Label"]
modulate = Color( 0, 0, 0, 1 )
anchor_left = 0.045
anchor_top = 0.635
anchor_right = 0.19
anchor_bottom = 0.739
margin_left = 15.6338
margin_top = -0.345207
margin_right = 95.5389
margin_bottom = 10.4308
rect_scale = Vector2( 0.6, 0.6 )
text = "  Rafael Gomes"
__meta__ = {
"_edit_use_anchors_": false
}
       [gd_scene load_steps=3 format=2]

[ext_resource path="res://SpritesBlocagem/FundoBrancoBordaPreta.png" type="Texture" id=1]
[ext_resource path="res://Scripts/ChangeScene.gd" type="Script" id=2]

[node name="Main" type="Node2D"]
position = Vector2( 508.606, 281.655 )
script = ExtResource( 2 )
path = "res://Cenas/CenasMenu/Corredor.tscn"

[node name="Fundo" type="Sprite" parent="."]
position = Vector2( -4.58359, -0.600006 )
scale = Vector2( 0.565491, 0.565491 )
texture = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="Fundo"]
position = Vector2( -2.98703, -196.177 )
scale = Vector2( 0.754051, 0.233278 )
texture = ExtResource( 1 )

[node name="Nome" type="Label" parent="."]
modulate = Color( 0, 0, 0, 1 )
anchor_right = 1.0
margin_left = -102.584
margin_top = -122.6
margin_right = 27.4164
margin_bottom = -108.6
rect_scale = Vector2( 1.5, 1.5 )
text = "Costura das palavras"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Jogar" type="Button" parent="."]
margin_left = -70.5836
margin_top = -21.3022
margin_right = 56.4164
margin_bottom = 14.6978
rect_pivot_offset = Vector2( -623.631, -145.926 )
text = "Jogar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Creditos" type="Button" parent="."]
margin_left = -52.7108
margin_top = 30.1523
margin_right = 39.2892
margin_bottom = 56.1523
rect_pivot_offset = Vector2( -623.631, -145.926 )
text = "Creditos"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sair" type="Button" parent="."]
margin_left = -41.0929
margin_top = 178.462
margin_right = 29.9071
margin_bottom = 198.462
rect_pivot_offset = Vector2( -623.631, -145.926 )
text = "Sair"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
margin_left = -46.9203
margin_top = -96.1549
margin_right = -6.92026
margin_bottom = -82.1549
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CreditosPopUP" type="Control" parent="."]
visible = false
margin_left = -5.0
margin_top = -1.0
margin_right = -5.0
margin_bottom = -1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="CreditosPopUP"]
position = Vector2( -4.91891, -19.3831 )
scale = Vector2( 0.687817, 0.254138 )
texture = ExtResource( 1 )

[node name="VoltarCreditos" type="Button" parent="CreditosPopUP"]
margin_left = -49.0
margin_top = 50.1353
margin_right = 51.0
margin_bottom = 74.1353
text = "Voltar"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CreditosPopUP"]
modulate = Color( 0, 0, 0, 1 )
margin_left = -85.6229
margin_top = -110.596
margin_right = 25.3771
margin_bottom = -96.5963
rect_scale = Vector2( 1.5, 1.2 )
text = "Desenvolvedores"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label2" type="Label" parent="CreditosPopUP"]
modulate = Color( 0, 0, 0, 1 )
margin_left = -85.6229
margin_top = -63.028
margin_right = 25.3771
margin_bottom = -49.028
rect_scale = Vector2( 1.5, 1.2 )
text = "Camila Murta"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label3" type="Label" parent="CreditosPopUP"]
modulate = Color( 0, 0, 0, 1 )
margin_left = -85.6229
margin_top = -34.487
margin_right = 25.3771
margin_bottom = -20.487
rect_scale = Vector2( 1.5, 1.2 )
text = "Fernando Nigro"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label4" type="Label" parent="CreditosPopUP"]
modulate = Color( 0, 0, 0, 1 )
margin_left = -85.6229
margin_top = -4.16226
margin_right = 25.3771
margin_bottom = 9.83774
rect_scale = Vector2( 1.5, 1.2 )
text = "Rafael Gomes"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Jogar" to="." method="_on_Jogar_pressed"]
[connection signal="pressed" from="Creditos" to="." method="_on_Creditos_pressed"]
[connection signal="pressed" from="CreditosPopUP/VoltarCreditos" to="." method="_on_VoltarCreditos_pressed"]
           GDSC   	         m      ������������τ�   ��������ٶ��   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   ϶��   �������������Ӷ�      ui_right   d         ui_left              ui_down       ui_up                      
                        !      *   	   1   
   4      :      ;      D      J      U      \      _      e      f      k      3YY;�  �  PQYY0�  P�  QV�  &�  T�  PQV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  �  &�  T�  P�  QV�  �  T�  �  �  '�  T�  PP�  QQV�  �  T�  �  �  (V�  �  T�  �  �  �  �  P�  QY`             GDSC   	         5      ���ӄ�   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���   ����������������Ҷ��   �������Ӷ���   ��������   ���������Ą�������Ҷ   ���Ӷ���   #   res://Cenas/CenasMenu/Corredor.tscn       PalavrasPopUp                      	                              #   	   $   
   *      3      3YY0�  PQV�  �  PQT�  PQYYY0�  PQV�  �  P�  QT�  PQYY0�  PQV�  �  P�  QT�  PQY`     GDSC            Q      ���ӄ�   ���޶���   ����������������Ҷ��   ����������Ӷ   �������Ӷ���   �����������Ӷ���   �������������������Ҷ���   �������Ӷ���   ��������   �������������������������Ҷ�   ���Ӷ���   �����������������Ҷ�             CreditosPopUP                      	      
                           	   $   
   %      +      4      5      ;      D      E      K      O      3YY8;�  YY0�  PQV�  �  PQYY0�  PQV�  �  PQT�  P�  QYY0�  PQV�  �  P�  QT�  PQYY0�	  PQV�  �  P�  QT�
  PQYY0�  PQV�  �  PQY`             GDSC            E      ���ӄ�    �����������������������������Ҷ�   �������Ӷ���   �����������Ӷ���    �����������������������������Ҷ�$   �������������������������������Ҷ���   ���������������������Ҷ�   ,   res://Cenas/CenasJogaveis/BuscaPalavras.tscn   ,   res://Cenas/CenasJogaveis/QuartoCostura.tscn   +   res://Cenas/CenasJogaveis/QuartoFrases.tscn    (   res://Cenas/CenasMenu/MenuPrincipal.tscn                   	                        "      #   	   )   
   2      3      9      B      C      3YY0�  PQV�  �  PQT�  PQYY0�  PQV�  �  PQT�  P�  QYY0�  PQV�  �  PQT�  P�  QYY0�  PQV�  �  PQT�  P�  QYY`          GDSC            p      ������������τ�   ��������ٶ��   ���������Ӷ�   �����϶�   ����������Ŷ   �������ض���   ���������Ҷ�   ������������������Ҷ   �������Ŷ���   ����׶��   ���������¶�   �������Ӷ���   �������¶���   ����������ٶ   �������������Ӷ�   ���Ӷ���   �           �|?5^>�@  ��/ݶ@            Bolsa      2                                                    *   	   /   
   0      6      ;      <      C      ]      d      g      m      n      3YY;�  Y;�  YY0�  PQV�  �  P�  Q�  �  P�  P�  R�  QT�  QT�  PQ�  �?  P�  QYY0�  PQV�  �  P�  QYY0�  P�	  QV�  &�
  PQT�  P�  QT�  PQT�  T�  PT�  Q�  V�  �  P�  �  Q�  (V�  T�  PQ�  Y`       GDSC   	         4      ���ӄ�   �������������������������Ҷ�   �������Ӷ���   ��������   �����������������Ҷ�   ���Ӷ���   ���������Ą�������Ҷ   �������Ӷ���   �����������Ӷ���      CosturaPopUp   #   res://Cenas/CenasMenu/Corredor.tscn                    	                        "      #   	   )   
   2      3YY0�  PQV�  �  PQT�  PQYY0�  PQV�  �  PQT�  PQYY0�  PQV�  �  PQT�  P�  QY`             GDST\   h             PNG �PNG

   IHDR   \   h   �f �   sRGB ���  �IDATx���n� Dq���e�P�j�6��̀�<�VlÚ؄��ފ�|�/���"PRJ�@I()%E�{�뺆�0̛.�E���Vf��72s@( )�zɖ��T��Ԛ"6��<�C^Rf,�??/�y����K����|��!E1C{= 3,��|`^¥8N����%#���Jq�ۜ��&E��J	�Մ��%E���L�C�3:,II1�vrXx'o@�@�����3)�gB���#PR��;�_�E�G�J�[R�K�?=�p���ec)CG��R��}��NHR���m��s������B-epq���y�^�qX�mIq���k2"�
x!�|u oMB'�f���x���
WRHnd\R�\u��cL�e��v�JϤ�����e����oX��Cg�L!�%&��W/%.����xK���ĩ?/e��8���Ia@)�+�Tӓ��x�ֽZ�#�ODL\�����F
g!p�!)�N�+N�2|x�N��Y?��PŤ)��;9!&ƲbM����b��7�@�)�1i�R2cb)+kR,�bxs>�))��2¸+�]1\P���,HQ��!�ci��k������t4��=��2�|��lR�nd����|#{�TFf�J�-�A���jJ���<��.n��ώ��7<6G���4<'����P��`��<K9�r��"�����()%E�����"PR� ;��&^78    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Bolsa.png-afecddd2ff0bee60aa81954c1e8864ff.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/Bolsa.png"
dest_files=[ "res://.import/Bolsa.png-afecddd2ff0bee60aa81954c1e8864ff.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�  $          z  PNG �PNG

   IHDR  �  $   �E�   sRGB ���  0IDATx���1�0�(���|�@����)��Ղ�ζ  �d��w� ��� H��� H��� H��>?�~6<�9�ߓ� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H��� H���  o�� H��� H��� H��� �l�{ .�rw��/D9��E?    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/FundoBrancoBordaPreta.png-ae620fcd2f8ba9a4aa9cff39a40306be.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/FundoBrancoBordaPreta.png"
dest_files=[ "res://.import/FundoBrancoBordaPreta.png-ae620fcd2f8ba9a4aa9cff39a40306be.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�   �           V  PNG �PNG

   IHDR   �   �   ��E-   sRGB ���  IDATx���{XW���!.�k �$Z�-�>]�V������t�վ�J��zk�ڵ*`�K�>m�n��˪��ݪ�J�iY-�ק,b�$$C����tL0�IN���W3MfN��3�s~���ݻ �� 0 �(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u��n � �N���#""�ߘAF��*�jcvNݍ8���+oV��ww��Di����Z�C�^���|�X������[��Uk��ص���dt)-)IKOO����E�;M�D�50�gB�^J������P���3H��!�B/�� �CEQ�F="<ݐ@F��V�fC��ǌ�Z,�nK �C��l�t����AF� �C�o��S,{�%���:�����7� ���ν��ohhHoKj��1u���F�BAmmm���~5b�D"qG[���w�U*U��Ç>���d�lK|^X@�$,���Hāv�Kn�ﷇY�+K�d���\�਑�<������7m:TX!
G� �P�I�MƷr6fo�q�)�e�J����,�P �K"`G�VONJ�Ǳ"79�LFkkk'N�/����{�f�H,�|�׽�2J���)����b�2�,h�I��[l�*1t�q�P 
�����ŋ���N큌n��ߙ��y�n�X4-�̌��'�x��.r�'��(�
��x�����n��uz����+���yz�޳�gN���;��T7���$&&��Jwg� ���0��;I�Y1jԧ��~�H��\OߍY-���'�(e�(CJEy���3	C�o39�J��_UY٨if�m!���>u��g��C���´�Ԣ��V���"�(+'����;�7��Dl�hr��Q�����T>;g=����?�h��;��3�V7��%��I�d7���瞵���4��;��߅��/�М���e��z�Q�{v�NJN���Q��������ᙨ����w{\\V	��e�<^b{��e���׳x �Ɣ ���֖�.�r�rcC#I�8>,**:N��:=I���L 
�B[Ϻ}�;�<q��_�bk��Q�TZR���;*�W���m��n5k.TW��������.^���7X�֊��~�����y�>u���Ə�� �g�NKO���>A/	�Ŷ��8��B�X'���}�?22��B��$	��|�'�++{�������ɏ%^��N��۽����x�$8A�`��M�r�D{Gӽ#�FHc�����vd�w���͘�j�X��Q?s�U�,~[^�+1%�;�޶��2�1D����7n8�[d�w,z�%��b�}	�V��Z,!!!8�������b��I���=-5u��=Z���.������	2�#���_����(J�V/{-���+?�[k._�ol�oV���~X.g�	ðxi쒅�}�%���8�g�a`�)d����윜���b�XD"QU�w[s��;��.�H�����Rm��e^A�8>< ����e�Ȩ/8t� s�����Di?C����ޒ���M%��~����7�΁����_�c���'����~8�P�7���O�D�H�8�mӟWUq�P�@F��N��v�2}�DQԘ��9���7m��i�?F�|��w����Q����Ӿ͝�g�}v��M�>���Q \�t��ֱ 2��4�����f1i�`�܈D�Y<}���񚛚�n�� ����4��~tϗ�V+�-rd���b��:( ���~�?�z�2s�d8z�y!�^/..��q�Xt�듃���kט��Z,cS�z���'�ה��lYy}]�`~{`�����c���Șќ���Q�'�H����W�|���M��amm��ݻ�e2�M��ӧs�J@F}A�ڶ_������#�e���[�03^Ko�Z,i���z��d�2%鞮4F&۝����y}���v�@�IF��y��iѭz}�;���`������~�ȑ�ucd��o�Q�93uƼ�/DFD��t_�|壽�w�:#�Rf@��a�E�RS=���rF�C�p�\�8���W_e�T &��]�r����ԉa�8X(	���k�X�$�����6��3Z[[�ў�&�mO�_��Z���68M��?�ᒥK��m���`�j-sҦ#�l�_�>�l�g4A�<q���X��0?��>�-(�^�:GpQ��	'��h����#���4*���L�Qժь�<�xiItt�k��03��vk���Ƚ���c�"��}U*ժի�-իij^��e�8V�@�Z�tirr��8z�XDp�c�{ìKGKKpxx�����j[���FEE�I�nXx��uwm�g�?}����s�V�����ޒ>kv�ŋi�`P%��W�\u�*���x�N�����l=���R�󳞟=+-=͹����%3�΅��8��M�������rS�������}w����p���|PZx�/��T�����t�%�Je�R���-?ݺ���d[T+�J٭���x�Z�a3�F°���X9��3���X��1��������a��6f�H13�;�^�=P�H$�+\/Uc�f���bͺ��������1���=��bQ>9�7S��^��/��$��Ï��#�(/�<_��D)�Z���`�ă�����}ަףy}<HE5j�K������=�ށ6ք9���L$I���^�+?�9�]f'j$��ϫ���'.��@*Ϟ����7f���ޞM�.A���LV*�ڳ�߅K$����B�8:��j�W���,?ͼU2�e˗qԌ���3��sS�ت�<>eʑÇ/_��b@1���b�X���]������]���6���v�h֚5�\\���T7��q�qwFE"��		��5���8�I�z�{�9�x�*���JTo��v=;W����ׯ]���o�麻{�|���"�,n�q�.P���x�?b��Y��ԩg�)ڀ�y<���흭�iF°n�ZV޲�C��?^Z\r�\e��4���;�e�$��cF����/-�-w�[<��ظX��'����ɒ�vp�T�_�$�w$>։�$���`k�F�B��$a����m[H�<^T����R��s��PN�Ə�7�9<, ���wϡ�V+3�D{ǖ͛}��R�F=��3o{�T#�XT$'����W��d-[�J�P.x ����̑�p���,T�|PE��-���ͅ�ʔO�@��l���<���)���f8ׇ��FEE�k�
���t3:	êuk|�ݞ������^��(s��0�f>�a~�QQv��$,T��:cZ��r�qx������?��xz���M?c�m7m˳�X?���-(p����H$Z�Z��ee׮^�j��ᇚ���>���)D{���%�BaoOO�I.V!e�g��EFF�[[�S�-������A�K�k�~c�;	ú�7}`�����U�W��h�{(�����d��a����32�����e��ݻ�CB!i6g���\��=��dT1JA�~�q���'��΍��~1�]�ׯg�j��N)$I.|a>�Q�a7Ս��ښ����O�B�c���9�����Ч~�X�������v�g2:~C�I?~����o
D?�ju��=�/�~�v���e��Mu�[9��n����3���Y�����-o�� c"랙�,�˙��܉��H�t�+�x��,���;w2�n���|@m�
E�R���,��a:u�=�Q�E�Ԫ�d���:�cEE]�N��(�!���;�ؕ\��`�G�b���㜮J?x�9���̌�C��1�N޵ؖl��h�X� �-C���CQ���m���^~ٹ�"�諣�QQ��V�潂��v�����ͻ}�6=�BۦWUV�NKc��.�؜���?=s晊
��Py��RL $)���fcC�p�𨘨�c�,_��I����i+�O��|;OQT�L6�����ζ�/������<7�3�aؒ�K�,]������_P��_��:�]���cys�i��ކ��;ztǮ�.��u^\��;��������Mo�����9d�D"Q���Q��Qx����1��w�܆Nx�Q�F��~_vȨW2;����[q���MJG�;�M�2ꕄ�խ��Q���J�+e�ni4��{n�Y�]�J��ѶZ�6l��}^Ue���ס�Q���c�1k��FE9�������Z�:8V�ef���
ȨWz衇���	����#.��<t� s��.3����]j%K �^I"�<=s&� ��������vk�(SR\j%K �����k�H�B��˭R996y�ʕ̱�}bb���dd�[MKM}|�dfW:B����N�����Kf1CM�ny*c�!�^,o�vM�/��p�Z,�S�z��{
V�^ǘmb�XR��]��"Ȩ��������:'
�C�Iǋ��s� ��-w��i��y/�udԻ}�DT$�o[Ed��~��_����9(���n{~~HH��"���T7�كȕ����l ��D_���Scb��	��]KZz��K�X�� �z���U��/^r��ߤn\�f-:��l �^o�رeg��z�x����b�:{���S�w�|��V��q?�	�(��z_0f�؛�[#b�Z��q��@(��꓉��>�±���� �yvL^�Q�=V	�.a���1�^��λ�v���1�}���a�����S<͋3�����[5���S=��۰�ۚ�+���U�iR7�fs�a�(�hﰥ�����TH�$����э�޺r�������=?k��u�n�
���mkׯ;[q��ɓGr,e���<{eZ��(G����H$_���=�F�ԛ�I$�9��Ι7��}!I�[�:M&���p�����tȶ���[�</�Cd�2
P�����w�	���vx<�6���z�$�����Բ�7Դ��b����a&�-�����M�;wǭV��װx\���x��)R*u�Y�(I��>=��|�ӅG�=c}��V��{h����5wX�hyY��
��E�/����f�����h{{��s}?�K�0?KWw��{&�*����9yj$��6{v'�)�2/�(�j�hzB�6�ҩ�7�h�`N"��ժ�?z4I��\��K�~nV�^O�3�8~S{�Ӎ�0�?VT��n��9��������pXB�0���AC\�H�L�n�('ף���\�Mp�P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P�IF,����"�C������nN��G�&�x���9/�'�.�`!������[�$�̕�pףw��q}'^��`C���]�N���8s�iJ��n��&�3gH(�s�Y8���rҡ��o�ӡ�`��۲u����Ғ��bsKLL4w�c!��Ə��b$r�'N��������E"����u��ϟ���l)�z|�� o?XȨD"���8[^Aש��ʬ?��>���ne�k�"��Nӌŋ9��f�����w�6=�Q ^���6ujEy9+�G��W����x�h00����3_����~w�P�ð�Y�/TW3K��*!Ə)W(��+Xg6��]��U�����q��8k��	1#zS��3�j� ]�<�ݟ��b���_������bV�RMKI!��w3>�j�`vFU醕H�S��TV��`F�w��[����ju��~垀b���6A�nݶs�.���(�RV���ֆaئ��7���v\�3j��iK�KΞ9S�C]�^��^M �G��z䑧�M�3w�D"q�ѹ�(�$I�����2��Şz��yFp�����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P����AF� � u�Q�:�(@d�2
P�`���l�=    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MaqnaCostura.png-a14e5ff3380a31631308cc8a1cc1c70f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/MaqnaCostura.png"
dest_files=[ "res://.import/MaqnaCostura.png-a14e5ff3380a31631308cc8a1cc1c70f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST�  $          �  PNG �PNG

   IHDR  �  $   �E�   sRGB ���  nIDATx����R";@Q{����T�qFZ:�Y�Q+��I#l���  #�����k �x�$� A�$� A�$� A�_~�6�o۶�d�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�g/ Ƶmۗ_����+��w��_5�|��38qgiw��#�,D�Y��S��,K�IQs�w���%qg&Rww����qg,�����u�.LJ�9�h5�q�N��9�w~���)ĝ���ĝg�9H��c���s��Ìĝ��@�������}9j+�>cX���9 ��3f>���9p��O���.q��O��� ���9�����Y�������� �,�h��jN��b��Eܿ��������씿�9p�Z�O��g4�#���z2��~��=�����E�'���Rq��1��I��p�LJ��r C�5Z4�Γ<�F��bq���_�TOE`)��^  �w� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qz?{�mۮ_���kVw�s3�/�x�$���ά��ĳ3w��@��/�Hܙ��u�w�"�L�.�;�wFwl���E�;@��2������m��3�;����M&0��X�q]��=[�+��>y�$���m��+m�iw� qg2�=��`kw� qw� q��؝�;}N=� qw� qw&c��w��&qgP����!�>3w� qg\On�m�Y���cV�v?���qgh������;���=X��X��u�H�ݱm�v!�L�"+;�w��|�����;�x����j��a&�F�o��Κĝ�ܙxYge�ά��0sw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qw� qz?{/�mە[�}�Jh����ӭ�����<� ��;�e ��?��ˀ����}�}�^I�_�Xx%q���z�'��sL8\-�S�8�|�)$~4~#����<�����V��+J���M�bѸ_��@������c�>0q�q�����I��"��}��>�n��.�}�Kwt�ĝkt&%�<h���Dĝ�U�w^J��5ĝQ�>Hܙ���w�;s�}�������L�Y��'�������L��� �x�$�p���aR�$�p��ͻ�<�sZnSs�c�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�$� A�  ����� H��� H��� H��� h����5 p0;w� q����*��    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Porta.png-1aab28c8291cd570e229e88dddba8ca1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/Porta.png"
dest_files=[ "res://.import/Porta.png-1aab28c8291cd570e229e88dddba8ca1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�   V           /  PNG �PNG

   IHDR   �   V   ��    sRGB ���  �IDATx����n�0EQ\���]D�*"�m<�y�{V]4��!Pj�b�ٽ�G$D@$D@$D@$D@$D@$D@$D@$D@$D@$��7`X)��C�[h�п��4B���J�l�M�H�i�E�ͧ@��se��6�֜!�E��I��xG���HCcm������e)��)e�%�H	��Y�b��I�gjY$�6�=��?�b66]ߓ�8�x��X���6�Db�E�-Rg!�X��t[�6n�[H�e�ۅR�Voξ��΁F-k7gw�SO���p�Z��s�k���:�������uP��kw�AO˾Ct�n$q���YZv�n�7��'����+鄃�B~��,9hI��������c���$���V>iM�v/8�~�ǜ8���xS��O��&���?�t24���Vh�]a:q��\/RB�D@$D@$D@$D@$D@$D@$D@$D@$D@$D@$D�n��Ԋ��y    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Seta.png-593fb9d3ec62d27d5a37011db2c52500.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/Seta.png"
dest_files=[ "res://.import/Seta.png-593fb9d3ec62d27d5a37011db2c52500.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-64cccac53b0e1345f4a7136e4b735ea4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://SpritesBlocagem/icon.png"
dest_files=[ "res://.import/icon.png-64cccac53b0e1345f4a7136e4b735ea4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSTP  �           'a  PNG �PNG

   IHDR  P   �   ]�1B   sRGB ���    IDATx��]ixź~["�1(� I3<	 
!ʾ�qe��QAE6�&� �D	��,�Q! ��D2�� ������j���gz���;���IOu�����_�W��U�VGe�ڵ+�R�^x�ŭ�md����/���
���
�׺��/nns���<��M��U����?�	�U1TL����/�k�J@o�%�^x�w�+�(K�]���>W����/n���P����^x��-E���oF�V��c�Q�z�V����$���|�U���^��P�Mx/���Z�l��_z��5�IǑ	����T��/�6p%���ܕ���U�Z ���&�aw�͓��}��>�jX�x�\,M����-�f�� ����M�Tͬc����?!�ͮn�â�[�ߛ����l����=:Af�Y�y��K��(�#���>$��|d��5�t��{wڷ���v�C�.���swu�,>��[CZXh�2�'"y���FM�,q�ri���Y�z�PO�U^w�xµ\�S�_2�N :���4��P�r����D�f�r�"���������fW��V���+XN6/Q+ش5E��[�� J��K��V?2a|s�,q�����5�B��'¿�` @f�`��������U�V�RW����;c�������yyYH�����Y/��a�S��?�j�_FDo�"��9g=�B�+��	"Rl�l�U��a紏.i=��Ы\�]~�1�� ̻�K�>�/G���"�f��Y�W��r��;j��qc�y�iV+���^2�;p��nO�Դ<w�>���
�T<	<O`�K�H-[�	��a�)b���вm���
�B<�瞣�5k�V��@��i����V(���,i������3�'a�t����Q.�O�< �T ʮ�%�s"Yu�ջ� �����%¤� ��m~�ҋM��g���FT JY�Sm?��n7t�u� �\?����=�g�v|,��Jpul
+��=����O��}l��N�ʰ�^��>zZ��}�đj�k"���H�O$"Z�	,�x+�p32�<*��3o�sq�gLX�b�����|���2-���ˆ�����(���S4�M2}�E��,�FM����˝O���  N|�4+���� g�زԅ��f*�_B��sH5 @b�Uz���jfz��B���X��Y+�H�;\a�Ls����ZB��']@eӀe3ߤ���V�� %�R�N��O��잀���FS���m8�<��j/،9k�(ZCFD٩�e��P22�԰�&��@Ӎ���L�;�c�P�ó���i��cW�V�
ȝC. ;/���(���x�9*���7d���4���[���6�iUK�_ǃM����BO���D�r1�-�}����t�""���2˳��F�e��  �FѦy<q:�/�+$f_�~���k�R{�����/ ƴ_���w8]����C+�Y�c�����v�aD�P�q<��z��H��"����s��Ҵ?V$[r���XwB��cG!�?f ����;xi�?j�GE4����z?���������\���B^���S[�8f������l����.�|xX���ۚ��<)Ͽ-C�В;�{���>���̍���� �z^�B&OW�X���>;�͓�7����..1�[����c�!8�!  '��F������L�6D���� EaC  �3���� ��rRN�y���v-�X�ēl�D�� Y�Z<7�;����v��Bu[?�q�{�T�;W�P�x�9 ����HC��DZ^5���{���^W��Ľ��.���aa �O�<�Ku!����sƜ5���1GH��?�Җ˖A�.� �p��N�=!�*��y
d��G��W�q�|�l��j�� V(��䤜�+N��m_�j�5�Od�u\@����a�<�;��PT��ÆM{�n�U��S`M��7b�AD�v�{*��/^��reO�`�ۯ���"?� pdI����U ����*�/G���N����c� �F��t�uu�t��|�2�e���3'�l?�l�����h�7�{Xܑq�}.� �9�i�sϞ�i ��C�S���yԺ�jS��
e�^��J�R<�� �4�촼j����O�vZR���<L�Ӯ�}�{�w\@kں���}t=Zפ��Gk�#.�䑊(�ۅx���6[ r�c����}?*9)��a`ED���Y�'������1��[��\�\���o��Sլ϶c� ���Uе�{X6�a䤜B܊,���c��YZE��:� �>�}���Ч�C�uH?�Y���
 Dl�=��&������*�G���nw൸Ř7g�S����Z��4t( �HMV�vÃM����l��*iz�[<�G�tA҈�*Q�_dE�X�}�U�T �/f����s�Q�郘Z��n錑�c���8V6u[���vC_�R��a(�%�v�߭:R���rJe�`R��4�������p<�^������>y�5�m�� �+���'0ʿM�!/ʛ+��+��	)Q��y��'`o ��+P�8���DHE0©pA�i�@�?��ʴЗFOR��h]�#�Ψ�����d��ADٮ�ŕZ�$�h��X	 ȍ�!�s���ofs�7�^ �����婋̃�y��B���Q�KR-p�@��9W�4P�i����Ot�`gii~0�rX�ܸ�gNX�c�ܰ�&*FFDi���Ɉ�֗��=qo�ތ Կ�QÍc�*����k�nw�8�@�/���t
�{��d�? �o��p��g��s��6v\Ŋ�çO�I�<���������'���AL-�#�x6UF�:j�����xBO�p�kN���C��yG��v� ��k��S@�H�&���*8\�*R�� M���Z� @yc�(r,�>��x��7������FE���G������5��.Vn����x�;���j虝�j�jD��Y�z�߇4G����4xA�o��KV�u|�u��m����k�=�Ș����,�&L]>�_�ƍ5�7Reb�
o��.�j��[UQ��
W�	i j��MH*=��E�Z��6њ&�$z܎��$�UA�����M��Q*PV8�����s&�4��U��`ܰi�]��\7EH����D��q��|�����ӵd'J��cMZ6+���I�s�� �'� ��e*?�COWHz�I)8��%Q<F@�I�+��q*I���e� ��m
�nh]LZYs\�<A@՜�S���|��$Q��"y�W��9ns.���'/%�|�{�i�;T`( �l��T �{�{���euK�{ �":���u�Ѩ:�/��<��� ��m�9u��)��UY�Y^�x ���M@ �H���;K����
 L�v' ���W�4`��/�@�J�����sC>~&� �����c������e�K�NT�tqT֮֎�{Hj=�B
p��PK����.B� ��C���E()��Y��
 �Z�뭟@��M�Ū������K���8G-� �����&,�	g����p[�����!o��Y� ��� �k��r���ơD���5�p:F��y�q�~u��_W�\
( *���E��;c�K.��K�+�.���d �I� Q����8u�8$AOES�w�`�� �������N���2�gc=�՚�Q9��wC� &f��'�wPAu~(�J�E��"��#��F���p^GN<(=Z�䄋P����C��U SA<�����n	|O��R�3%�
ͻ�q�x
`O�
(�c+��tNDE��A��޴��%`t��΄�"���,��� �Ʌ��"՛�ZW��w"�H̾��!���W9���֨(F�GD�d�ʯ\��;R�����ƇZ/0��G'��Lڄlz�ڸ����sL/"i.K�l�s#�����Zj��R����f���n����[  ��E@��;Jv� P�Y�{Ì�Q�k���P��L��
݇+X6�a�X�:v�1J���w O%�Mw{�%b��z��7N�aG�Ǒ�#����
 ���2�/���oMpz����+��I �.����}R
>�����/�?GC� l���R�}R��D3��o-F_��D<=�(�fi2�Gz*���v ����ҽ`#�em���_� �&�j�j�Z�TH�xI	T�āl�L�ĉ' ���t�}Ӡ	:ָ��5nP�$�d\�	����<9����I�
h����9)���r
=Zפ��HMFpDCl>x����y�x�9�Sm\�Z� 9��L]�x���a�S&׆ԗ� Sz�H����@*� �)�*'��&D����ճG�x��;l>x�^&}��8*����n���~��(]T `k�8����k M�S�S	���T<�5j�{�1��q�����jC����?rfS։��t��%�' U�V�X���9`������
��nw`����̌��{.�r��/�'���_1�N;���I� 4��	/�U��ٯ9�&i#�05憋����J<%`�W�޿�
hΤ;�Y����3+K��:�_�^�����f�T�z� �Q	&#Ԁ�H$��
�&D���-�yq`=��x�9��P?�*~�p@?�G�J��zf	H_7k�G��i�g��~db���� ��4W �� [��oGp�����k�z�]M��3��y(���ܫ�A�M�s�0���l���@��\j�ٰ�kt��2�
�Z к��&����d���� ��)��/�q��_����q���hMw*�M�Л��c������Jq<��*v��� P���Z|���H���2�z����D�SD��'����4���9@�f|C� �N������:�-��FO��_�pzb�	ς�0�� ����J��?��]��k:�4�e���EBF�^V�B<�,��êp7����"M���4�
@yo��4ϑ>q��l3x��T��1�z��D�X�DX�z�,i���r��}Mh��g�O�+���d�V2w&N���r�|	1�5�ᙸk ��W�m��惗��krM��k* �P��2j��+N��? �_#�	|AUU� @���ѽ@M�;s?Ӛ���^❧�>z��d�b����ApQ���6�)�G�ȱ�n��]�j�)���':c�s�������!n��=��xQ�n�C�W�p0繼�#�	(�>�f˨a�Q��V��%*�&��Dt��P�Q<N@�KD�6��;^ (�/ ��Y��=ݎ?�oW��ϲ(����	��HHP@Q�/�'�;�ɤ�.����	�>T�cm�mȣ�2�Ii|Ź��qe0���_p��W ��?)ﵐ��]+ h��6[��O�.����&Ǔ�`G��!���Z��4����)A�s�dN�.�^V :T�+U��6@0�ā�%
 �(���U� � ����w' ^{yT R���Y��/�}�=I��uf��+��@��"N������_�D)X�6SHFp�љ^#��%W0��� ��fP�nw�=m�˦g0�I���2(�ڜS7l���j%/M��:= �޶�q/>J�Hp�f 8>$D��U�U�e����"��JD�U~�q��f������c3��s>7Q�Gw�  � �p�}i��p{�J_��s#�fgTS����O�ɹ=!�����%'�w/�k @�S��Kp!�NE�O�SE^C� �2g�T*� 0g�T���$����T\��Z�^-b�r��:o>x=Z�dœ�~�22�о��Z�-��(����@�p7����K
�E�>b+C2���6�)�w���%��2���m\3�L��DZ���i��[�*�?6�]�(j}T������  �6���u���!Τ�!��(�p���c��v�������]����b�^K�\ę�kT<I9dv�ț������>9��G�_�EeZx$M�Ý�.��w�Ο�v=�PDC�e�!#�.,��(�V�YO�!�eH�E\^�3�}f���rYnvR?m�Ȑֶ�>���~��!��E��q1��xVdd�#̦}�	:�'�ك�쑉g���#+�;��@D�<��gE�B����xr0�r�U�.&p0Q"��-ɹ��L�LӾ��ڸ���eœ3�]��"��hb��;�w��������ZN����܃~q�A.��Oזr�7 j���De�y� s��
D5V�f�MkA���p ���/ ��ip �}��/hG���?sl/�/��@7XgF��u��J����g��6̦1A����sw��XD���Cg��@�Pw_������mT��fڸ�,?n�� �/f{Q�����y���^9�2G��e�k�p��>leV�7 �$� <ٱLe�C\�G�洕:�h]��F�\K��w�uḛ�!� ��,�yʲw�C�I ����'�;��h�x��^m����5�a���0�R����+�y�^�
� @R�hD����.Pm��+I_N�2F?����T(Iݢ��/i�'tO�_#��`w~S�ui��;/������-Z��!	�����+@�3�Peē�n=�9���!��M���0����z�^�T���8��KH˫��~�r���i�#��EZ^5�WJ��v�O�� 4�?�!c���UE6H�/����>�1�>���y d.���� ���'N���;D۸�	�(:}�f���Ǥ��h��/��K��@�Fu�#QK�41/ ���f�ѿ�_��~��s�Y^K�/���B���&�9�ښ������sϡ��r"�
�\SD��B=��`�%�w���vp�^�^x��_�]�m�˾m��!��CN�?�1��H֘�<_O�,Y���dY��ہ���/��;�6��	i�Y�G3�p�j)�^-���<Nټ$?����
) �����O��/������C�3��Ϗ7�3��H(�zuC|�W1��w�'�^x��_��7��* n)�Z-��?-�=��K��T����#�p����/�n��� ��s	���P�Z�^x���+���PecB���/�?�6�Y\c��M���;��/����M���[B�Ҽf"����e��^x��_Jժ�ou*׮ח��/��(�5�Uɟ+x��������^�z��L ]	����^x��=d^x�(���/����j&�e�,�5���s��J�^x��wØ*B<��6�g��J�^x��W�J�<�l1{U��=�"�u%����/*�T����e93�X7��z�7��1�]P��^xafØ*˒�h�-O��z�7fØ*K�X(0z��"�^���/n	̢1�	�D��+�%���/�x�,D�R�ܝ{����B�����A+�_����oidii ���2�s��v�]��#�휔S���?�jH��9뾲0��z��VѪy��<��2<攕�nB�Ge�p�����o���G��v��\ǫ,,{�9i�Y�9��%  ͟��Mw)fiKx�ߝ0z������'�>+@=�2�4&p�4��毗 ���|�ɷx��;.M&�"��_5�KW�ϴ|�̜��*~������=6�}�����e}6�_H:[����ˊG"[c���.��թ�`��8��O\���E��5ß/�]yf��
�%B
� �i�%8Q�gkL��e��^-E�j5<�Ц�N��ݵM#�V�J<{��	@[�I�V�;T�����@�� 4��}�#]y"�,<��"��	��)H��Fro������t�uKy�&>
 ���)����A�D��F-��')oO^�z�^��%���9�Rrڒh����7Y����R��9��b��������I�'\�����M��"p��Se�kFuBͨ������z/� �cY�_�Ƨ����]�2���\*N���&������a�*��ۘ(����^���OE��KIg-^VT��`8ށ� �I�'8!�~T4�8��\Q������wzn��L2d�i4������o@n|��$&��坨�@_ó���[��OU8    IDATp����I`Պd��r�r[�lyO�jg���{� ��)���_�?����B���=m��"�,J�_<���	�C�8Gѕ�>��%�� ����׫�͇V�4�(4��m2��8��k�9�  �
P�5����T�9N�U&߂�����F?.aƜ5�:�:f�yI܎�GE#8��X'w�qy�,�V��2���ӌ�w��g�奴_Z��T���7�e�������}Sc�q����D��4��{����-�EP+���CU(�x��&Z�/ <�RyO�j����˕�bS*6&�Gj2b�S�&<�;w�G��<ƛW?+���u��B�~l3�i��EO|�<�?��*4�*qʡU�����:O/C�f�@,���ʋ�Rp��W�^޳���%� ������Bu�ӟ���s7O���T�@���ٱ�r��]ͪ�{D;7�Tn1������|k��	��1��DL6r���Ѻ����eñ+����eO�X�gI����Kk�����u  �B�i"#�����@"0<d�'2�VbE�L�c�QuŦT$��@�ʯ���c��lND�B}�i=L���Rjv����MK`b��rhg�G�PZ�����w�	�˲q|H-��D9�`��D �<�w�g}�Y}� ( �I��hWk���?�T�n�*D<�Мx����/�.�"��3�$�]��@^ vW]T h�� �������7�y%h�J����%  ���i��y�R�gC�C�d֟`y* @�,�l��_R/C��|�2�wD��ï�[ի ~N?kIDjv� )W��֧��� ͳ�B/ �p���,n�Ft�q"����NKt������� 4��"���;����1"ǂ;+zy��I�R�O�Lh�����I9E�y���O �ć� >�q7^���� ���i�(n^�G!cn73� �J�`pO*Dj� �x�+:n͆ώӘ7��%%�5{�� �1��D�@	Ԟ��T��8�W)��/����h
��5n�yyN�;��"���* �����+��&��e�
��of�:|�s�!+��&��e:"��h]S���� �fc���Gn3>����S���P����8����Pfn|��(�-�[�B X9��x�ē���8��D�����l�-�E�sH5�~�g�:�C4n��՚�/�~`4�$��;���<��.��8�����)O�?�D���$e��*b�S�*��U�	A��哎G i"��w�}�P<�L+�ᏻq�|8�=�M�E��* e]�*b����1���D)֕N1��r >;N��I����(�r ̝�R�$�c�/D�g���N�9m�z�������v肸J��2���J<+	f�'Ї�)�^fc���P�p���'��K>R�nW',XI��o�;������j��"L�pl� b������_���~�Y�,V����?N�u���9)� �q�/���N�����򕏻�`�k��0|�8=Z����1O{�#�EZSf]Y����t} ���u ��^�	(ky����ٷ�&�?L�n�v����Xe�����\�/'�xs֕N1} ߏ½˲�����hI&����Oĳ�	��oz���;��ٻ_���*��c=��VuxD?���W�F-22�h����D�Z� �Z��v�rR��~��惗������[Q���v'���M��s{bi�J���<��y�_]�y)_�>�H����q�p����G��W�����q�v�C*�+_R(�B���w� �������-ֻ��&|������4$|�w-���?6�_WΡ�k"8�!�9k�^����
 �t������cp�7�5-�o�É�8s�X������_�V���m��g�%��p&+�J��:VD��s�~��9)��P�oq n3�vvA�{��~�ك�����_��X�`�_ޜ�:�����%�dv�y��F"`��"22�8�p�(�L2�Z�~@{�Ƚ�~T�ۦ'x���~��S���Y�����,��x��t�y��c���*M�@7�O��+_RYm����j���Ucn�_8��e�/ ��@�G���f����q�����O�6o����rE޴�HL���m��%��;7i"�/�p���p��H��j��:�Mڅ�v�C��F���h˓��!E��K�I�����)���T�(TG-� ����D�tv�~�d��ƴ_�ٻ_��M�ri��D<�AI�*��ڹy2;��\YDDg'��(/O�R��eۀ�M�"or�iB�\���-�'W�g'}y�q�p4xbL���0���V0�^���T@-�76$Çڻ�[�g�����~�X<���������c��rX/�'�h�����
��_�����Gq-�X�<�s���&r�aF�S����5�h]�6�����Z��FK��`�oVP�rp�\1���淥ۯ�X�?L� @s��	hM�׿���� ��M���x���Vd������E�k 8Z�iz�(ߏ���nV�,:�*����
O�X�D<��пlj�ds ĩ�J��M��ڄ6;D���
���<d��C�R<�f��Dg��43x��1�Y��&�4���t�H�MIL�_G��"n��7��.��iA5�맏5�'���b�dJ��xV�ߡ��bh����>��ߟ����ѐ>s��HM�6��x��Ģ�I9E���k�4�Og`����ĴyC��@
��r�D�Z���9]���O�S ���Gv�=i���?{|�f6d������2 `h� ��2 �����w��Y ���8�Vd����Ѽ}fÈ�D~9n>��o����hC���"e�}��
���TM$HF0)����*��y�{h2��*�ld�9.k!���x���+1�k��"��Zh1���M� 
b}�}���"u��_i�3�~^� (�R�L>#��7���ˢ)6���U %!�@��շ��yd��N�E�"o��H�ŵ�? �ާ��y��i ��kߋ���O�
8�k��Mq��Ѻ�!�,�> �Q��Œ���;ΜӞ��c� �(�D�FZ��=�
Ѐ��&�3l>x����������p��FOp
( UQt�o>2��Q�F����PS������c�r* *�d +�ܱ��>�������T�@�.@ �FP��%�$�=,�eс�f�QuQ0@�<��*q�� d3�Ȧ�HY�*�_5�+B>l�Ӹ[��,\^�o4��8�=6�h����/���ӕ�ܹ��"j�.�����( ��.X���@�嗉3 ��X��e. �x�r���nm�,������,���48J2��5������C�>��lZN�s"qֈ�\��C��3����j8�����&���t+ <Run�y����Z���3X�4K�������uc�v��O���8T�㺗����I>��9������O���* k�YOA�HW�~�6?�fE���<�cĔ����eI�2"ļ���D�Ћ�/���Q�����S*����\Ѯ�.����TN3�S9����4�~�Pi��l^;[���r�����͡��E��C�f3?n5_��^�'�
 5/O�@�m�Φ�j(�B=}1���n�fN��J �����C��7ꑧ|1��Q��;��p�~�RU�9��1\�v�W��hK��/��p�6N��J���9�s��J~�'��J-��J�2¥�GWO����R!�i��QK���������x��^`N���i�7�~��F��,���_�����=f< �ٳ�ZDE���h�I�h����M�V���"�j}�6Z�ϥ�3e<�ի!E�������  ��i��V���dq_�0K"
H�G���5w`%���k�,͚������I���)v.�G 3���6����Er�  _�$�4��~_�����aM�f���J,�U��)� 00r�K ���~y���ԗ�Z�~��(��[?@{��(�(�۶oG�N��*���˟u�eڈΜ�_��?� �k���`�@�� �aH�y�I2��-�]y�'kSu�r	W�i�cX)S�=3J�Jk�$ ������9�����e��b?�BY��S�aE>���� ���7^�df �k�0�uѦf>�ݝn�c�O|L�(�	�B�	.��s�Y�#�ೖ�ߥ�0��Y/�<����c��ʏf_@��ܗFf�����6=RH`�K��5�=["DP �����YW��ƊGu���� �����lY��
� �*S�k����g�<����+��M��¤�g� 'T
@�Mu�~��,��p��+���: ��JFc���OVDeb�_f'O�9�̱�6���@���C��eճ$`�V ��]���jDDU�':wT JZ��b2q-q��7��1��!O����oB<IÚJ��S��� 	�y���x2��`gi�c��
O��fٙ�	_b���\Z~V.� ���Η��󴩈������ �8]�31�*�ɧ}�e턖X��
0U%i �toa6���`*`{����j*k���U�/��n��#5Ye-QGj2�GOHw����K��2+�B���ê��b��u��UK�5���B< �Mw^O"�d��㫆�o�|�������w������ ��-���:v^K|�Y���y^K|G��릊��[~ƈO#?+��_a�iP)dD�Bpu����f��]��Z�� �NhO�	FT��Wo�!Ij��䶣!�T���x�G @��b�ڻG�Z�n�N�����}&��Շ3�QUQ�;N���6������f-K@��.I�A6B�n�1v�Uf4d��W-}��/��;��XQ�X�3����*��P���v�fU�����!~p���k��O�,@�����G��K��8]����vf�����(�E�E�Τ +�ߤ��-���a��Y�H�T�e�|R THE�i"u�Iq9u�auN*����K܊fY�>$� Ô�Wo��:K�>�xr`D���st��j1�1���e�!��"D�������d�5	2�+�gGё�n��i��3�i�	��a�?��a(,�Ay=<�Ci��Y-�`��^x��;�{\�D���8�R�5�5a�,��͖��v<�V}v�&�I�!e��/��&j��_�OwPK�������Ӹ<&|U�!���>P�-�˩�|�0h_�u�����k0~�9<�@C}�j�L��D!!���3�N/�Z��;�rhc�S�o[�V����Ҫe��<Rv���14��`��ŹĔ{��g3H�ra���sё�4�����ݷ�=�i�����w��m���ҹ�����O[�%��,��j�G�1��t�f��H�4�!�|�W�y�+* ,������q��$݁���q�f��? Jq������w���F�*/_��?���f|�l-�j�zY�,d$H�V����[�9�^��=��9���S���O���F����d?| :,���3���Z���* 0�~ �/�y�?1�0U����1�p*I�����S@w�V��él<P����\�d7Î�%x��/�?:,����;i]�~7Rr��5n�����>��[��œ��ե��5�n=�����f|�F��2������RA_�^��"�G37{	�y䤜����1* e���#���}㳰!�e�g�~�tA(�z��tk {L�U(�ҟS�g,C�9^q��X:c������2���)�X��i��)�`o6�L<�����2֨���Uֱ�.$ p�Hw�.�e~������Լky�G|jҽz�*k�˚�V�>���x���"��6�QOS��2Qf?m�ˉ'�Y�dR�|����**�	%#��F2�@d�Ӵ	K�T�ͣ���1 ܞ2�+�\޳�u�/�e`���v�_�� �!O�Ʋ_��|�fKHS���ctou��ѷ�����%%\�����ۿ���X�٣���Rӡǿ���EP�.��^b��t-��y�$\|�<�i��e}�Ǒ"l�>�@r%�t?�uۤ�i�*Q &5JU��j-���b|�c$f�#��T<���(w-��̿ͬ2��I�ك�:3�,܅���؇+�r�D!�w�m8��6Q<���}�[ �8�<;N��4f�r��lSA��b��旉�=���8�H_!��ԣ�S��t�j+/�ko��w�6���yn�C���!O֦�"�%&������%$*����WE��[���l����c����fKP7ld�h]<���͖P.�#�6��	P�H�,���x�S>�M�cWH��@�l�z㖟+�o҅ �ѡ�u�\P>i��1�M������﯋�&��_��Q�#xBO�G��*`�]#kp��
ۄ�Y�'�45�Bc����p����O�0im: g@��%�*��$X�RSZ��%��"�D���@U�î���s#��f;���g��~�*4�d;�9'�n����ja�x�,HRw��{ncC�) 0�}US>�P���W�0��}��%6�]��	x3��uR(C�����X�eb�L�|������.�3��_������_i��ۯ�U���L%�F��f�)M��C������v���a㖟qm}[7��@��!�-��'�3���[�s�X2
F��~�z�W?LE^��F7U'N��߹����_O���6��w �x�b%y�f���]t[�y1�ҼN�vj�fXe��`�ݱ	?�}�k1���ժ��u�AĊ�'�0�Dҙ��A<�����s�I�l��@17��1�ԟxe7�����Y�810D:��!!�Hh?@>�f�#�إ3�{"��<ל%i������=� �_|�	BBH�R�Ï�}��1���gOO%���Wڌ'����ْ��_,�"�>�T�O�y��*fW���Ū����� ��F��L�O4�]?og�r��!�� �k�,Y
pƔS2������F�ń�[zP�lW/�l�B�.���`ē��o'�6=�:���=����e�� ji�V䤜"�M��È4�[�{+�IT'�g�z����~͐o����/����H<\]�x=b��lȭ�h��������Y��0���L�P���-�;O:�����U�� ��=��w�w.���cWP��vw%r�f=��9�e����w}9m�7&���wHp0I�z]Eϟ����u���W>�ɉ/�W�8������	��}���^��aز�:�%�!@��w`����d�����b n쁆} o���3��7�*z�)���'��^.z��ۤ_�l =�2u��BY�S��B�1�*�0�RK�q�p=���k�q���Vi<�ly���'X�� �o0�z�@�]�^��o��ص�n5?�B
��gRjA�ףUI��b2�&W��I0Tv�w��'����� �ݿ�@�m6��Ns�����S	��ȹ�)$m��g�O��(_&~e�1����D�@@� �ʘ}b�"�'v6&���n��'�x^`�]��'h|h��&���P�m ���gն��:��Z��.PT0w:�"�2��au��r}�f�i�O�N�� B�h��_����(Ja�i7���̬T��_޳5�:��^�����Z��/��/�<|يX���b|SC3��}��n,H
M85lۗ���iC����ƒ�}{!�ơ�j�*fם���vH����`
H��:EOSgPl�1�_�����<9��|��^��Y���}O")[>6���i�  ���'X	\]�g;'��N1���]��f6|��9�p��4���?n_��?��␬�,B�\.؇ك�A1W��_"������okv�A E���a_���n�X�T25���c���g���2zT7|E���x7��[���m
Ҭ-ɛ�����B�Z�_*Ŕ�Y]I�k����ή��\�-�`�81�p�A MD)_���5*� 4)0�&�PDa�粒��R� y�UW��g���) &[,C��@,��
<��    IDAT,���e��h��%�;f�|��� ��GG�3�/:�ܐ�	��Q"�9c^�c���Kx] ����R�j�����c�^���u��g���ɒ���;_sz�ot��}#>D$�EAbs����̞�L�-��d��?�i�����? Oᣏ!��4�̒m���$��|��$�k������ �Њ�pTo�64w����b�L<eC�������o:?+p�TD��q" /j��i��/�1ͤ)�B�(�/[���3�1�3�}��k�ن�D��j��@��@>,̰N��￮'��| �I	7y��[��D��ʏ���)�m�Jc�;��/[��6�m�J���3�l�}�4]�!4V�F�Le|f�O��� 1 b����D4���[?���AC\VD��ՠ� ��RV��x�`l��H,z�[����$�C���lVH�;�]sܾ4E�?�F N������"*Z�2�]�u�ɢ@��}�	�>�k8��,����;T@�w�k�@=�iY�r��QkS��zh�Y��Ոt�j�69>��z�?�q�� �=�_��ߒ��ƾ�P��ǥ�+P�x���/�c�}්�I�42s�sҚ	�>,�`��_���m�y`M~W(#ߜc(�q�&��A�T�#�ciܠv�C��|�w��!�O�0�1I�Q6p�.b
�'}��/M)_<�C#hj��4W|M��� ���v�J,˔/٠���vY��,��>��H���a��Whb*<1O��G|��a��xr�N�"�^����sS�n��6�� �5�Ǿ��
9?]��	]������:����5�� �b?w Tv�u��0eN���\;���D���?l"��>W�d�-�����O�ƬK�[&ӠGʡZ���s[O�z|�_����*�7� `�³���e)��1���<��O;���.f��[8�)_+~�R"d�'}�D<��tA��N�2!t�.N�1��y��"ba��
 ��j��s��74!�w�G�у.�2�t�d��83J���d1~�5�{z^~azu�Av����{����\��S\o��#�y���a\�O�A T+�O��wi���O=0B
 �s�w"rf$O�(�g�'��l��`�	�u���d�&}��L>��>��!��f����G��*���0tkyʷ5����GX���ݗ }�:n�{��M�Y��
X~�-��r�y��e�d�����@y,����J�:T�U>XFӈ}��T�	͈ �o�ބG��4�14�c�����Ħ��i�����x�wddf���m���a����u�X��f��hf�z�f�Y�sֈ	��|pd��^r%��^W2���ؘ��o)�n~0�w�Rɟ��.�$X4���9	�V|{�14jD��t���O�;G�@- �4�]�į2�D<��^�5�ef{�1�5�7���~�.}T�|��+�*�(�h�ē�:���^����&��u������y	w���R>�_ l��G3��޴�o+�ۯsN&Q�Ę�$�g��:'t���g:9������ߌ/�^Uԝ�U֡d����r̈́X�X��F��������9k��~�uaDBe��'���*��}�Go�vʟ|��8jǈ�v�ٸ��+|��?�E��P)|6J��������k�<a#6m��K�R1���'�>����7�-1V誶
E�V���'�C�*�/��n�NËѸq��e�?�~�/6��¿U���mM�
@!"+�`1�p�t<�,\���"bo����g�0�:.`���R���]�%V-q� v�tX�
��J!=�j�*�j�]�ݿmQ�&*���t����5a���Ж�#�%�,O3�XG3��wayr "�TH�rꢽ�_4z��������cW�-6���-6�Q���K�X�]_"^ \Z����U&�X��&}��k'x�S�LDT=1��� �qD��%N#���
㓩��&�+���>��|�aH��.�,��ד,����e�����5J�)�s�]k�#�q3�� 3���2֤����E������/~����}�V��oO������tX�
�YX?},�nV�3犑q����ˣ�I�&�1E�s����9W%S+?]�!�K��E�Swn�gkæ=���Y>.],C2���P&=�S���"�rK�����?�O�=z����4�^���Zh!�f�W���r�I��^S�V�}�&�����b����h_?mQcΤ�ձZ��{���׫����x�W����|ֱC��o�ۊkJ��}-�b�'��?�FЦ|��#�}�]4��6����Ֆ��/�Z�8J�7ԙ��85�Eu����oOř铸㑾M�1�i�ē�(�%���%�D�kpMz��B��Ig���%�5�_��Ɔ2�Bv��@-,��g�ϣ˃��	 JFf�B��{�O(�b���v���g�6l���ЇY4z)��P4j�#}�  ���,:���5���FM���������4�"�nh]L�<�f�x/�Ɍ2K��k'`�?_�0~��NC#6�&��.f~˷`Y���r0�ۚ�{�1�����qNYS�z�,��⋚%X��/�z� ���
 u�+��-���]?�'Ò64/Q ���ǘWG��_)��� uc�c_�ĵ��G%�ab�uY{�l>h�-u6�� �鱆[n��DTƿ}i
��|�@Xh�_��-<c�bFb/34����Yt�q��� h�F�2��f�2���*��!>�i<��铤�b]�l���УG��j�B��/�;�[�D���65�VC���~�C�T��K��y��݉�Z�P�-��(���"JP����������i!�l܆��s�W����(�E�Mh�ѭ��nuꢽյ)j7�S��a���8�S	��X�"��'��������a��6��+?|ٽ�w�x�{/݋d ��.�l���k�;�����`>A@��1����u;�¯��F�2�X�^�'O������z'�T$��k�ˮ�K3��x�<.�^�I�R�I��b��gR1��f��43��>��K�:1{�z�2=������ۚ����f��a��^gc-TͬCV׳��u\��o�c��� �q�{b�7ӑ��yU��g� �HP�8�`�H��s0;���֪���EH:[��5�"'�b���gg� e���\��|'�q�2N�º����{	�߃��� J�P~���/cnv ���6.�jߚ��oGaA6v&m�,X듀g��6 @��9t�'K��o��N0��v��bc����#�P�k��X�3�JfϷ]z���;_��|ё䳿^��Ȇ4A��$b)�w!~��3}�*`�ʩ��e�����ē��� Pk�Q�p���ۚ��/w��І45�6���wI�hMx���$Y����(�vt5rp�\q������L ��c���P�}��6Q��k*~�=��jHR�1;ָ�����&�P@�=UrN�^F�ھ��[K���K�.�rۅ�jp�\�ԩ����CJaǈ�� ���JA*�?�9�t�7U!�P8ma\�fc�.\�6v����_�}��Y�t�>�M�������u�B P}P�F~�'�"������I+��z9?y�F΃�
�������l>"���"�C�<�ݪ��T^_�#�l���ӄ�˧�e3��B[�<��f#aGq.G�R�����E^^K���`�s���'���9�� x}�K���)�����M�>I�֗���kE��f�~SGaW���]"���&tJ&[;�sf�s 3+�fu9܄�Q��Ds�D�폤�E��[���`�'	`�4��vOCd�<����|����/,ȆZ�@�� ��h�"�Y
���1�l�uq[ ��y��1� �z�B ����=!ͥK� ���@�.���#�V��Q,3��&������\/���Q*`Jܜ�[�W�� ���� ��b�#��M-?c�E.�����sI}�N�B��K�D��0�δa��Y����(��ߛ�y%�_�E��Ŕ�Q�aW��~R�B,��S(fua��'��䔅:L�}���t�����(�[E��{rV����T�T PK
 _,!*��q=d|��O����u \oSH ����(u�/Z�.��(;�2��`"Z�A�}��r
d�(3�{� 
;[�V𩪌�i��V�3���c6�,��Y���Vj������ w�3 ��  ��O��Z̷��Q�(N�ll���&�_G�/�[�`������j� �u�h��x��Z��̃��XU ���(�['O��( ����q����+�PK�l��LM��E{}��m|�A�����u�| �8��IJ AZ~D�_���6E����/ߓwM�[��ڶ�bq��a�H�|0���Q���?�-WCs�o�V�/����y��;X�'�9��S����e���W���Χ/�)�;��H��eL�Fq[���+j� ��tO�����o��1�%�5_p��B`��p��(�,���B2ƀ��7�	��k?<z�.]�ʺ���a��o�=k�iC�N|����fX;�<�ő�"j�a��0 -`���?"�d���D@پ"�� 65\��t����b(��}�<U�*������'i3�� |���ۿ��|��͚p⾿*�
��es tneCsQ�����n3���e�`ǹ~x��d�qu�����|�=X��.�o�}���H\̀> ����r
�|ADD�<�_?��\D��!?_6-)a�� ��'Q�I^���W���$��D.���V>������B�B<9��<G��F�zЕEk������P�}Z��Ѽ�;��8��:L�zP���YL}K�Y*u��At8pS���)���b�[i���K���aa�E�xh+�*�4�=� 4 ��s�hf�u$ν'
�=nN;��p^$���D7��P����	4�;����E[1���[���IC���`V�$�){��o�}����
�l9R�u�&��J������+�tΣ������]�]�r�@��q��1�i�g�.�:sL_� ��++��.���m�l@D��xan�Y���N096��5�`�i���`����p������n���:8��B�KGK@ēF.��:��y	fG>��qa|p�l�����HEtH'�KF"T.�{p+��1�ۦ���~&�c�/���S���{���+UX�/���qm�LW\��D�p�]":��1�2�tUN�/�8����/����W}<�NA#B*�e�5�� Rd�7�Gb��A}Z�&
f�ȃ@��D,Q�5�by|ӝ ��@1�i�����X�5��$|"~�6�c@��FD��o!�u�Q�^X�s�fQ�s|�k�@Xҁ�wC�b"
᳿��y;1��v�n��v����.ˆώ�Hn��֓Z�˶_TeA,�T qs�h9����Gu���s��� ��P��V(��Z`n:~HC�EF�cD*P
C��Q�Ѐ��Iq	Pg�2!FN�aj{�rQ$"��\C`�:aȸ��?nw��&�0~fn�����{wo��}����n��v�D�5A��x~��ti��.]#�-��O���.�278YTv@ P�7'.w�B�@E��� �́����.�}�UoR�X����a���z�s�
B�ߧ.�䖺FB;�D~����oW ����?����-��l��)����]�Q�c~<�@��G�����f�.~��� ��g���������Hۇ˷�2�_ ��+Pڐ��Ի10��Ȗ<��g]�3}^PN*���-�s��v�[��!����q���,,���œ�ŗ���L� �����8[m_<q0���-;.\mͭ8_���(�m�⯬ۈ�u�%�W�n�zaQ��"���YVPq@�AD� �/d��e��ޅxNKI�66��y}��-��{e
����b�`��t��-��7Q�~Em�z<q?����h].ߪ��(ug���ݘ�(�)���S~�J�;��x��zb�%�N�D�G1��=|#˝Vǘ�c#�^�xz`:n�ueN�/~K$��˕8;�,:2���]|��4��e�tɽBfp�S�-Z"Q���1��x��IO�Q�c��_)�\-�[\���;��� ��U�ǖ_�!����/|���+x�t8�����EnaZ���,@K�EK$��9����6�"*Y�� 	�W�v#��
��j���S�	 '\uP�h^��Ȍ �a�'?�SkQ}!O����Y��x�zk��~(� �R�F��J��Hl����z��6�*����W� 6�>����o7/�}�1��	��e��L����i"f��R}+>?R�0_� �e��A�q=������u�O4��%�
��1L��a����zt���x#/��L��Ra�j��7AO����V��r����%s����E���I�W�Z�w;�W� Xs�U�b�pR1{��9 е,�+Q������j�������4b��l������g�;�����sa����U�+}��v����	@�� �+Pf<>�������*����c�#�����̟��\�,*�A�O$�%U�o�c;�*����do��	|2���g0�{NGc�����"��}h�Z�����G��v���}��B��|>Rη�����7X�^����c"��B����x��e}�dǞ&�>���G�YG/%7� ̲e�u�rRBA��H'��j@��/����M�9 ޫӄ?�]�u���̛q�F����I{&��Qޔt .����,���G.b�U�Hl��'��wq��_����&�����5T�O��nk�Hl�w�( �`�k�?HΫ����óՋ��v����> x�c�9(����brQ(\�!�q�t7�Q�L�?�3I)�_|�"�rtI<��י��Fv� ���)ɍ�HV���<2#��������aE(��C���s�����L��G�]�*�s�ڙ���1�-�$���9�|D�^]h���p��y�|y(M��Y��u3�O�����y�׏a����^V&�d�_@��8��nO>�Q��je"*���y��C�]<������*�3T0Z�@b��g�>P=� Vm[!D��r��5�2�A��[�/a�d��sӶ�_�� @O�!wfИ�$�U(�N�	e/��;2Wo<]˶����˶`���S�(~~j-��\ljw��W���G�'=�9�i-]<m�A<�.���g�)?*���<")_/�Kh��+K���B�t/`]<�SS��OW Hy�Σ���R��l��"'��w{���؉�����Q6> �(C��$��A����9$\uP ���am� ^�-O�����%B�'T R8`B�=�D0�(��I, �󯯠�)��� ���f��V��#�pTv��?��m~�]n����f\�t��#��(x!�'% �cp���9����Q 	���x��_z�6�lǵ"��ɯ8I��%S�)|6��h���Qy�w3����y�P�:���U����O��!��x
N��N����g�s%��9k����a�d�b5A̾-� �4T�`�d�s%��s��8 �0:<���޲([��qdכ����bi`�t4���`�Z��g�V�B@m�e�5���e��;e�P p��(_N&��P%jy^l>��Wf�]�	(��(�\�cON^�����:�R��q� !NL@WPyD��W$�����s>˸��TN�-��?ۿ�����M�D�.�L0u���[� �<��wʏ�ɝ4$��]�/��@���_} ���KN���?I�=�y;eB��j�wM|�#�)�_j�.��U���Pq.��%��]@���
�O�� �Z+�]�x��5���;;�B	��!��=��|�ZfZ��r��:|��؇0-e}b'M�]*�ҏ$¬�r�������D�r��6 ���8�א�ձ��\��t�   �IDAT���_= ��s��� @�ֹ���C�/���ʯ)�-ʃI��Ɏ_��P15za�@v�x���4o�.������0&Y(��2��@�rp�^�i8~_� ʀ��޹��J�T�7�~�^����6��e�J��v����� =��:�~2�X_O+?�9���>+�5�=��kdF�&�.� ��Â�V���.�4�    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Skills.png-a7af7010c309f22d4009357b83355854.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/Skills.png"
dest_files=[ "res://.import/Skills.png-a7af7010c309f22d4009357b83355854.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://images/Skills.png" type="Texture" id=1]

[node name="Node2D" type="Node2D"]

[node name="Skills" type="Sprite" parent="."]
position = Vector2( 222, 123 )
texture = ExtResource( 1 )

[node name="Skills2" type="Sprite" parent="."]
position = Vector2( 789, 469 )
texture = ExtResource( 1 )
        [remap]

path="res://Cenas/CenasJogaveis/QuartoFrases.gdc"
     [remap]

path="res://PlayerTest.gdc"
           [remap]

path="res://Scripts/BuscaPalavras.gdc"
[remap]

path="res://Scripts/ChangeScene.gdc"
  [remap]

path="res://Scripts/ChangeScenePorta.gdc"
             [remap]

path="res://Scripts/Palavras.gdc"
     [remap]

path="res://Scripts/QuartoCostura.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         JogoPalavras   application/run/main_scene0      (   res://Cenas/CenasMenu/MenuPrincipal.tscn   application/config/icon(         res://SpritesBlocagem/icon.png  )   rendering/environment/default_environment          res://default_env.tres             