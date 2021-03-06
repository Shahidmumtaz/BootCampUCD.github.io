PGDMP     -    #                x        
   p3_project    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42836 
   p3_project    DATABASE     �   CREATE DATABASE p3_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE p3_project;
                postgres    false            �            1259    42843    State_Lat_Long    TABLE     �  CREATE TABLE public."State_Lat_Long" (
    "State" text,
    "Initials" text,
    "Abbrev" text,
    "BLS_State_Code" text,
    "Latitude" double precision,
    "Longitude" double precision,
    "Pop_1990" bigint,
    "Pop_2000" bigint,
    "Pop_2010" bigint,
    "Pop_2018" bigint,
    "UR" double precision,
    "UR_Pop" bigint,
    "Percent_D" text,
    "Deaths" bigint,
    "Population_D" bigint
);
 $   DROP TABLE public."State_Lat_Long";
       public         heap    postgres    false            �            1259    42840    unemployment    TABLE     U   CREATE TABLE public.unemployment (
    year integer,
    unemp_rate numeric(10,2)
);
     DROP TABLE public.unemployment;
       public         heap    postgres    false                      0    42843    State_Lat_Long 
   TABLE DATA           �   COPY public."State_Lat_Long" ("State", "Initials", "Abbrev", "BLS_State_Code", "Latitude", "Longitude", "Pop_1990", "Pop_2000", "Pop_2010", "Pop_2018", "UR", "UR_Pop", "Percent_D", "Deaths", "Population_D") FROM stdin;
    public          postgres    false    203   �                  0    42840    unemployment 
   TABLE DATA           8   COPY public.unemployment (year, unemp_rate) FROM stdin;
    public          postgres    false    202   	            x�u�[sG������:�~yTH��A���l��fa1������T�jl&�oә�y�������է�9{a��W�y}c���1����\�9�y,͹p��L�ц�L��x[L,պPM��T~bG�]|������M>�6.դ���4���#�<7���e7�b����%?�Ctͤdm&��B0�Y�)�D��Rv�D�?9=991�S�"�6��m��o����@�o%5�97��<·�S�%>�C�V�X�2��د���R�o&��N����v�ڛ�W��m���8�܊��yV-�m���>�/�7���&(>�h�&����O���O�\�W�������9?3��;�N�ѹ��J�kc�.e�iչ��c�DɄ≴砥�b&����ԃ3��k�V=�B}�w���ջ�9itܝ�g�h�!,rƦ1�+-�7�L$K��$K�@Nʸ�{b�T�1%�'?���_�I%�2nl�뷏�������i��=�$�1�R�7�ŏ%�@O��RN��JtĜo�z �2G��9�R&wZ�!ָ�x�p��_��zX���r�i�������iIc�V�39g�h	,�VZ��ev�G���4G��}O� �q���6oOv�=!�?�H.���x�X�F1��;-EP�a�8B�y�(#�e*�*J�6��N����w1x@����G0�y�2?�0?N������)�$
��g&9��q��』O:��@���{���Z��P�.F㚀N"�~Z������O�?a� @@Hc�%�U:��*&!P��-�\�e��9 |2�w���ȮDJ�P�l̳K3a~�!ލ��Z��*�,cl5��%g+�B\�^B氋��R��}����?fʒ��Ou��w�;sya�[�H����'b�#G��'x-�<��KS.Y�%Eq��9f��0W}��ٟh�����py���6{s��p�3U�1@�I��c���?���((p�WzG��>��2&4�����T#$�CL�U����͊�sym8��|Knj0�z// �4:�]R�T2F�U袾������%������/�~E� ����O잙���%���:����F&q���Y7�κ�zF$�T&θ�����%��-�
�~+�������6:R �Vr�L�����7(�D�w(�E%�bV�Sy����±3�0��ԛ\.�����o?~1�ߘ�_��%�1�Y���\E1P�Z�F��P|�h{���hAm�9�^X,(�B��ϛ}���3󢓅_�Wp��7E�ٍ�,�I��[I�#=�db]mJ91�9&W��"V�rA�kiq�Zm�ks������)���01X}��T7aޗ������B�w`��;���f�`$�m��J=�<|�_mߙ�s���֞�M$#BI�!I�+�o&�h�IL��Lv(���	j������J�Z\��Wo?|ޯ�����B�dA�ԃ�DB�<��7�`�2� 'y��t��/ˈP�k3.�^^�"�%²��������\]w_���@I|���A����ݍ�%�`�c�*�����[j� �g�"�ܑh�����z*�����W��������lbL�s4"�CI�74���BT�0^t{TN�5bW<$=�������7���i7��H�V���"AK��v��C}E�%�=�(h�PW�#��5z��$7 ����n~���/�UW�~A�p ����E:C��Jv�����&=m/�Uh�9(2��P �i�i�r��_��n�(���1:�OK���AFD�j�'ɧF�'�R�bO���"��AV dh�uQQQ������>z]�`t�/��|z���:B����+1�H��1�۳|�c"?)����cr��>����+���-���=YfE��zК��R,�Ȓĝ4���4��0ѳZ�i��pⓐiZtV���<y�������}��\�ϺK�ĝa�O䐙���Y�B(J�)a���q��j��������~�`w����~��\��/?w_������'�1�{��Ġj���U��G��TY5h��{��W�A3t�@h&������۝����U7���J3�ra,(�zH�t+Z-�Poƣk�䶥������P�*��/�޻ov��|x�}X򣧁j��!h�vɬ� ��fD#�B�K�c��w�	t�<d�GH)��V���w�N�W;�$�<Ǐ>- �����ii�B���)p&�XG�jh5�>�����D�1.�E�1d�n�hv�b�Q�}}�cݱc�0����H�e�o�w
$/��
���P�)�LNM�k��/?lv��3ӿ1�Ԓhj�kF�
��Q}�`�P��R��ʊ�>�D6&a��Db갗B���3|ݟ�����3>����F�Z����9a��wA�t�U�E���8�ڬФ�f�dˇM+m�m�p������y��p�/�bd����Pۈ�~G�D��bx�L�A���j�g0D���d#Gr� �g�_������+���rf~�±�NR���|�ҩ����a
��Ӧ�%�Ns�::���{�8l�U�_;=砡�Շݻ��徫�W���xٽXr�FsV&�$�b�'��>����!��$_�L��4�B��׻�O����y=Ug\2Ukn�4�j��:
`RQ/
D䥤�"��@-Q�!	���}�uP�%��fԘ�k��������䧚��lHٖU-�J�`!��1z�r�?9�3xBc�p��tۯ�����[�����S/Q"!~U�xbY��Pc&	�vP�?A�A���*�م>yI�2h��1����u�K���ְ�1ޕ�uP�Jm#�Kc�2��	)��c�wu�F�H��cH�z���#����������߸�-Ai����.��MU��2���B���<,��INic�Rp��/@�U�e&n���o����v��=��w*y�8���g�� ��v�i�Q��~ڻ��V5���Q��I�
�v��~�ʿ=3���ӷ�m�>y�d��Is=.9;�EA�3�PtU��HC��;�~�o���4]p���,:ܭPQ�����ݙ�Y�j���H���bI7�&�
��A��	�k�md�y�f�*�"Dm��3�)-�w����1,w��n���9��ƾ� Ϥ�#�(��uq�y���0�4�ޠ��J�く�JFW��	�����n�߰�K�I���1��3~d�0VGi�'d�y�T$����JHֹ7%e���e��N0H��>ys��p�+�����q^F�9�� �7%��GrI��S���羔r��P	N�J�ye��3���dT(          T   x�����0Cѳ�R ٥�����=Y���)�yR\͚�M����\��`s�ňV"Y��Rmm}�Ϻr��N���K� ��&{     