PGDMP     +    2                z         
   University    15.1    15.1 X    c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            f           1262    16398 
   University    DATABASE     �   CREATE DATABASE "University" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "University";
                postgres    false            g           0    0    DATABASE "University"    COMMENT     N   COMMENT ON DATABASE "University" IS 'A university database for MIS Homework';
                   postgres    false    3430            �            1259    16612    advisor    TABLE     �   CREATE TABLE public.advisor (
    advisor_id integer NOT NULL,
    advisor_fname character varying(50) NOT NULL,
    advisor_lname character varying(50) NOT NULL
);
    DROP TABLE public.advisor;
       public         heap    postgres    false            �            1259    16611    advisor_advisor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advisor_advisor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.advisor_advisor_id_seq;
       public          postgres    false    221            h           0    0    advisor_advisor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.advisor_advisor_id_seq OWNED BY public.advisor.advisor_id;
          public          postgres    false    220            �            1259    16619    career_office_employeee    TABLE     �   CREATE TABLE public.career_office_employeee (
    emp_id integer NOT NULL,
    emp_fname character varying(50) NOT NULL,
    emp_lname character varying(50) NOT NULL,
    comp_id integer
);
 +   DROP TABLE public.career_office_employeee;
       public         heap    postgres    false            �            1259    16618 "   career_office_employeee_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.career_office_employeee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.career_office_employeee_emp_id_seq;
       public          postgres    false    223            i           0    0 "   career_office_employeee_emp_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.career_office_employeee_emp_id_seq OWNED BY public.career_office_employeee.emp_id;
          public          postgres    false    222            �            1259    16605    company    TABLE     �   CREATE TABLE public.company (
    company_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    company_area character varying(50) NOT NULL
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    16604    company_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_company_id_seq;
       public          postgres    false    219            j           0    0    company_company_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_company_id_seq OWNED BY public.company.company_id;
          public          postgres    false    218            �            1259    16672    contact    TABLE     �   CREATE TABLE public.contact (
    contact_id integer NOT NULL,
    cont_date character varying(50) NOT NULL,
    grad_id integer,
    student_id integer
);
    DROP TABLE public.contact;
       public         heap    postgres    false            �            1259    16671    contact_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_contact_id_seq;
       public          postgres    false    231            k           0    0    contact_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact.contact_id;
          public          postgres    false    230            �            1259    16582 
   department    TABLE     �   CREATE TABLE public.department (
    dept_id integer NOT NULL,
    dept_name character varying(50) NOT NULL,
    dept_code character varying(10) NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    16581    department_dept_id_seq    SEQUENCE     �   CREATE SEQUENCE public.department_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.department_dept_id_seq;
       public          postgres    false    215            l           0    0    department_dept_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.department_dept_id_seq OWNED BY public.department.dept_id;
          public          postgres    false    214            �            1259    16593 	   graduated    TABLE     �   CREATE TABLE public.graduated (
    grad_id integer NOT NULL,
    grad_fname character varying(50) NOT NULL,
    grad_lname character varying(50) NOT NULL,
    grad_dept_id integer
);
    DROP TABLE public.graduated;
       public         heap    postgres    false            �            1259    16592    graduated_grad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.graduated_grad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.graduated_grad_id_seq;
       public          postgres    false    217            m           0    0    graduated_grad_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.graduated_grad_id_seq OWNED BY public.graduated.grad_id;
          public          postgres    false    216            �            1259    16689    participate    TABLE     �   CREATE TABLE public.participate (
    part_id integer NOT NULL,
    part_date character varying(50) NOT NULL,
    student_id integer,
    seminar_id integer
);
    DROP TABLE public.participate;
       public         heap    postgres    false            �            1259    16688    participate_part_id_seq    SEQUENCE     �   CREATE SEQUENCE public.participate_part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.participate_part_id_seq;
       public          postgres    false    233            n           0    0    participate_part_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.participate_part_id_seq OWNED BY public.participate.part_id;
          public          postgres    false    232            �            1259    16653 	   professor    TABLE     �   CREATE TABLE public.professor (
    prof_id integer NOT NULL,
    prof_fname character varying(50) NOT NULL,
    prof_lname character varying(50) NOT NULL
);
    DROP TABLE public.professor;
       public         heap    postgres    false            �            1259    16652    professor_prof_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professor_prof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.professor_prof_id_seq;
       public          postgres    false    227            o           0    0    professor_prof_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.professor_prof_id_seq OWNED BY public.professor.prof_id;
          public          postgres    false    226            �            1259    16660    seminar    TABLE     �   CREATE TABLE public.seminar (
    seminar_id integer NOT NULL,
    seminar_loc character varying(50) NOT NULL,
    seminar_date character varying(50) NOT NULL,
    prof_id integer,
    seminar_name character varying
);
    DROP TABLE public.seminar;
       public         heap    postgres    false            �            1259    16659    seminar_seminar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seminar_seminar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.seminar_seminar_id_seq;
       public          postgres    false    229            p           0    0    seminar_seminar_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.seminar_seminar_id_seq OWNED BY public.seminar.seminar_id;
          public          postgres    false    228            �            1259    16631    student    TABLE       CREATE TABLE public.student (
    student_id integer NOT NULL,
    student_fname character varying(50) NOT NULL,
    student_lname character varying(50) NOT NULL,
    advisor_id integer,
    grad_id integer,
    career_office_employeee_id integer,
    dept_id integer
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16630    student_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_student_id_seq;
       public          postgres    false    225            q           0    0    student_student_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;
          public          postgres    false    224            �           2604    16615    advisor advisor_id    DEFAULT     x   ALTER TABLE ONLY public.advisor ALTER COLUMN advisor_id SET DEFAULT nextval('public.advisor_advisor_id_seq'::regclass);
 A   ALTER TABLE public.advisor ALTER COLUMN advisor_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16622    career_office_employeee emp_id    DEFAULT     �   ALTER TABLE ONLY public.career_office_employeee ALTER COLUMN emp_id SET DEFAULT nextval('public.career_office_employeee_emp_id_seq'::regclass);
 M   ALTER TABLE public.career_office_employeee ALTER COLUMN emp_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16608    company company_id    DEFAULT     x   ALTER TABLE ONLY public.company ALTER COLUMN company_id SET DEFAULT nextval('public.company_company_id_seq'::regclass);
 A   ALTER TABLE public.company ALTER COLUMN company_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16675    contact contact_id    DEFAULT     x   ALTER TABLE ONLY public.contact ALTER COLUMN contact_id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);
 A   ALTER TABLE public.contact ALTER COLUMN contact_id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16585    department dept_id    DEFAULT     x   ALTER TABLE ONLY public.department ALTER COLUMN dept_id SET DEFAULT nextval('public.department_dept_id_seq'::regclass);
 A   ALTER TABLE public.department ALTER COLUMN dept_id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16596    graduated grad_id    DEFAULT     v   ALTER TABLE ONLY public.graduated ALTER COLUMN grad_id SET DEFAULT nextval('public.graduated_grad_id_seq'::regclass);
 @   ALTER TABLE public.graduated ALTER COLUMN grad_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16692    participate part_id    DEFAULT     z   ALTER TABLE ONLY public.participate ALTER COLUMN part_id SET DEFAULT nextval('public.participate_part_id_seq'::regclass);
 B   ALTER TABLE public.participate ALTER COLUMN part_id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16656    professor prof_id    DEFAULT     v   ALTER TABLE ONLY public.professor ALTER COLUMN prof_id SET DEFAULT nextval('public.professor_prof_id_seq'::regclass);
 @   ALTER TABLE public.professor ALTER COLUMN prof_id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16663    seminar seminar_id    DEFAULT     x   ALTER TABLE ONLY public.seminar ALTER COLUMN seminar_id SET DEFAULT nextval('public.seminar_seminar_id_seq'::regclass);
 A   ALTER TABLE public.seminar ALTER COLUMN seminar_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16634    student student_id    DEFAULT     x   ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);
 A   ALTER TABLE public.student ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    225    224    225            T          0    16612    advisor 
   TABLE DATA           K   COPY public.advisor (advisor_id, advisor_fname, advisor_lname) FROM stdin;
    public          postgres    false    221   )i       V          0    16619    career_office_employeee 
   TABLE DATA           X   COPY public.career_office_employeee (emp_id, emp_fname, emp_lname, comp_id) FROM stdin;
    public          postgres    false    223   �i       R          0    16605    company 
   TABLE DATA           I   COPY public.company (company_id, company_name, company_area) FROM stdin;
    public          postgres    false    219   Kj       ^          0    16672    contact 
   TABLE DATA           M   COPY public.contact (contact_id, cont_date, grad_id, student_id) FROM stdin;
    public          postgres    false    231   �j       N          0    16582 
   department 
   TABLE DATA           C   COPY public.department (dept_id, dept_name, dept_code) FROM stdin;
    public          postgres    false    215   (k       P          0    16593 	   graduated 
   TABLE DATA           R   COPY public.graduated (grad_id, grad_fname, grad_lname, grad_dept_id) FROM stdin;
    public          postgres    false    217   �k       `          0    16689    participate 
   TABLE DATA           Q   COPY public.participate (part_id, part_date, student_id, seminar_id) FROM stdin;
    public          postgres    false    233   �l       Z          0    16653 	   professor 
   TABLE DATA           D   COPY public.professor (prof_id, prof_fname, prof_lname) FROM stdin;
    public          postgres    false    227   m       \          0    16660    seminar 
   TABLE DATA           _   COPY public.seminar (seminar_id, seminar_loc, seminar_date, prof_id, seminar_name) FROM stdin;
    public          postgres    false    229   �m       X          0    16631    student 
   TABLE DATA           �   COPY public.student (student_id, student_fname, student_lname, advisor_id, grad_id, career_office_employeee_id, dept_id) FROM stdin;
    public          postgres    false    225   pn       r           0    0    advisor_advisor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.advisor_advisor_id_seq', 1, false);
          public          postgres    false    220            s           0    0 "   career_office_employeee_emp_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.career_office_employeee_emp_id_seq', 1, false);
          public          postgres    false    222            t           0    0    company_company_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_company_id_seq', 1, false);
          public          postgres    false    218            u           0    0    contact_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, false);
          public          postgres    false    230            v           0    0    department_dept_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.department_dept_id_seq', 1, false);
          public          postgres    false    214            w           0    0    graduated_grad_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.graduated_grad_id_seq', 1, false);
          public          postgres    false    216            x           0    0    participate_part_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.participate_part_id_seq', 1, false);
          public          postgres    false    232            y           0    0    professor_prof_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.professor_prof_id_seq', 1, false);
          public          postgres    false    226            z           0    0    seminar_seminar_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.seminar_seminar_id_seq', 1, false);
          public          postgres    false    228            {           0    0    student_student_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.student_student_id_seq', 1, false);
          public          postgres    false    224            �           2606    16617    advisor advisor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.advisor
    ADD CONSTRAINT advisor_pkey PRIMARY KEY (advisor_id);
 >   ALTER TABLE ONLY public.advisor DROP CONSTRAINT advisor_pkey;
       public            postgres    false    221            �           2606    16624 4   career_office_employeee career_office_employeee_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.career_office_employeee
    ADD CONSTRAINT career_office_employeee_pkey PRIMARY KEY (emp_id);
 ^   ALTER TABLE ONLY public.career_office_employeee DROP CONSTRAINT career_office_employeee_pkey;
       public            postgres    false    223            �           2606    16610    company company_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    219            �           2606    16677    contact contact_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (contact_id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    231            �           2606    16591 #   department department_dept_code_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_dept_code_key UNIQUE (dept_code);
 M   ALTER TABLE ONLY public.department DROP CONSTRAINT department_dept_code_key;
       public            postgres    false    215            �           2606    16589 #   department department_dept_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_dept_name_key UNIQUE (dept_name);
 M   ALTER TABLE ONLY public.department DROP CONSTRAINT department_dept_name_key;
       public            postgres    false    215            �           2606    16587    department department_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    215            �           2606    16598    graduated graduated_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.graduated
    ADD CONSTRAINT graduated_pkey PRIMARY KEY (grad_id);
 B   ALTER TABLE ONLY public.graduated DROP CONSTRAINT graduated_pkey;
       public            postgres    false    217            �           2606    16694    participate participate_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_pkey PRIMARY KEY (part_id);
 F   ALTER TABLE ONLY public.participate DROP CONSTRAINT participate_pkey;
       public            postgres    false    233            �           2606    16658    professor professor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (prof_id);
 B   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_pkey;
       public            postgres    false    227            �           2606    16665    seminar seminar_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.seminar
    ADD CONSTRAINT seminar_pkey PRIMARY KEY (seminar_id);
 >   ALTER TABLE ONLY public.seminar DROP CONSTRAINT seminar_pkey;
       public            postgres    false    229            �           2606    16636    student student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    225            �           2606    16625 <   career_office_employeee career_office_employeee_comp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.career_office_employeee
    ADD CONSTRAINT career_office_employeee_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(company_id);
 f   ALTER TABLE ONLY public.career_office_employeee DROP CONSTRAINT career_office_employeee_comp_id_fkey;
       public          postgres    false    3237    219    223            �           2606    16678    contact contact_grad_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_grad_id_fkey FOREIGN KEY (grad_id) REFERENCES public.graduated(grad_id);
 F   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_grad_id_fkey;
       public          postgres    false    231    217    3235            �           2606    16683    contact contact_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 I   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_student_id_fkey;
       public          postgres    false    231    225    3243            �           2606    16599 %   graduated graduated_grad_dept_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.graduated
    ADD CONSTRAINT graduated_grad_dept_id_fkey FOREIGN KEY (grad_dept_id) REFERENCES public.department(dept_id);
 O   ALTER TABLE ONLY public.graduated DROP CONSTRAINT graduated_grad_dept_id_fkey;
       public          postgres    false    217    215    3233            �           2606    16700 '   participate participate_seminar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_seminar_id_fkey FOREIGN KEY (seminar_id) REFERENCES public.seminar(seminar_id);
 Q   ALTER TABLE ONLY public.participate DROP CONSTRAINT participate_seminar_id_fkey;
       public          postgres    false    3247    229    233            �           2606    16695 '   participate participate_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 Q   ALTER TABLE ONLY public.participate DROP CONSTRAINT participate_student_id_fkey;
       public          postgres    false    233    3243    225            �           2606    16666    seminar seminar_prof_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seminar
    ADD CONSTRAINT seminar_prof_id_fkey FOREIGN KEY (prof_id) REFERENCES public.professor(prof_id);
 F   ALTER TABLE ONLY public.seminar DROP CONSTRAINT seminar_prof_id_fkey;
       public          postgres    false    229    3245    227            �           2606    16637    student student_advisor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_advisor_id_fkey FOREIGN KEY (advisor_id) REFERENCES public.advisor(advisor_id);
 I   ALTER TABLE ONLY public.student DROP CONSTRAINT student_advisor_id_fkey;
       public          postgres    false    225    3239    221            �           2606    16647 /   student student_career_office_employeee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_career_office_employeee_id_fkey FOREIGN KEY (career_office_employeee_id) REFERENCES public.career_office_employeee(emp_id);
 Y   ALTER TABLE ONLY public.student DROP CONSTRAINT student_career_office_employeee_id_fkey;
       public          postgres    false    223    225    3241            �           2606    16705    student student_dept_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.department(dept_id) NOT VALID;
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_dept_id_fkey;
       public          postgres    false    215    3233    225            �           2606    16642    student student_grad_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_grad_id_fkey FOREIGN KEY (grad_id) REFERENCES public.graduated(grad_id);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_grad_id_fkey;
       public          postgres    false    217    3235    225            T   �   x�3�t��M-�<�1'7��ˈ3 ?'���𜼜�{��9+��OM?�'��?;��˄385'3��𴪌�<.SN��{�S+�"ީ9�G�s�qF%fd�p���M�2��-Eo�阝�3ݒ�Ȇ���L�ن���E�0�c���� ��9�      V   s   x�3��>��,1��r��#sr�8��8�Ss9���9��ӈ˘3$��2���?;��Ә˄�;571��𴪌�<N.S��Ҽ�b�pN�����\f����y������)@�=... �"�      R   m   x�3�t��O�I�v�2���L.�/�O+�9
�r&����U�y`�)�[brjR~~6�k��Z��f�s�%&C5Ypz:��Y���y%�9`���sfqr>����� ��#�      ^   P   x�Eȱ�0���%�d˒�K��ìB����<iC�%L��$� �h[��E(A�-h4ʶ`c����Ჲ�5��a�      N   �   x�u���0Eg�+���f�҈f(K�Zi��Ei��ӄ%1Z���:>��ɣ�K�Β.��ѡ��j�e���3d�����jԭ����tܾ�pyh��i�}-�@�[�By�
�[��^�C(n�b�4���Y���Z�2�#y��a���#���"��c���h�      P   �   x�=�;
�@�����H&��+��V�̀rg��+�-h�n⾜�`{�����[�n�(ā�4p+�CHs쵿�Ů�7�)��uRZ�{[�9��k}�a[��牘�_ǎ�	�X��k��R�|�����(ǲ�ٌRN*@����(�iFD_P&<T      `   r   x�e�;BAk�.�u�������AA�"�j!Z�G��H�����p�0�)&W�Ýb��80�R\0T���Q%�S�nP%oR�oQ%pS��P%�E��A�I������$o�Q8�      Z   e   x�3��M��M-�<�1'7��ˈ��?<'/��.cN׬��"N���J.N��{�R�/�<<�*#1�˔3 57)��;5'��|.3N����<��)\1z\\\ �"�      \   �   x�}�͊� ���S�]�|�=��R؅-��"F��fj
y����,/��f��
�Z*�R˕T适G?4��4����]�Q�A��U�A��e��)D�,�d�"p��Iq����fc�ՕP�Z�Iq��9O�b��
���p3���|�:�5����fp������(:G�p����#�.�q��m
nA�6��GT��;�}��-'7��_���	��      X   �   x�=�1
�@E�?�7�&Z

���`3��H6��A�D�`o���Fe������W���yw�����P��;���w�=C)��cYsФռ����H���|�k�2X���V<f��u�(�l<{̥j�첊>H�*9�ʱ��O�h#GAC�t���}��c�N-�2�g��u����A�     