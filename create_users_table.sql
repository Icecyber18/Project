
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono INT NOT NULL,
    password_hash_(sha256) VARCHAR(255) NOT NULL,
    password_hash_(sha512) VARCHAR(255) NOT NULL
);


INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Holly', 'Perkins', 'holly.perkins@virgilio.it', 393609306785, 'bd0cbc81cca7a02391270dc61c0cb225c56bbb286c3bb436825a7c407c0588cf', 'e85ced2ae4f983f6ddbbfb9163d7df3372f617c597b25582b2aba0963213a3f38879d6ad11eafb4096f26bc5e1348beb8aff2a1ff7a9ac6b0962513674b2c15e');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Rebecca', 'Figueroa', 'rebecca.figueroa@live.com', 393906794051, '3dc0880fd2d9c8dea661a112ef0b0c621cdb2f3401d7b43f61d790a9db6e6551', '06e7e2574a3b8ab63b98b3a242d5509b7778c40fb9372ca793ec747896fa2e7a629761515d3221985d0388aa2a1e6eda1ff5b1ec930a44f3bbb164075b4171b8');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('John', 'Brown', 'john.brown@libero.it', 393306649452, 'c5cf35cfe5f861e47e5cd5fa5417287849da3bf54e9994348d0b86fc2446daac', '480b539ed6bc0f941380838aa5af15c6bcf2c8425d517d8dbfdb260c626191067631805cab9f16443c8e503619a9fd10cd080fb6a402e7e98f6b797f0fc3d614');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Diane', 'Mchenry', 'diane.mchenry@outlook.com', 393909521640, '64dab79609ea90c0672b80d2c62ba29c0c620e7576cfffb57731e29305b70290', '9410d4b3a2931a82b4f681b108fba657766fa43e5945dbce34aefb58d9be76269632813c9f55db329cc48fee597074a0682a926236f5bd34a982b74fa6362e08');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Ruben', 'Perrington', 'ruben.perrington@poste.it', 393301957543, 'a3ebdce65c73af9aef29a5069f691e09746229d490b749797f9fd5491dfaae42', '0081e57fcc0fade66fc536c372746bd74d4b2effc44893ef2ed3f9f33eb6d056217e5c0e4bc5908c85860f75fb5af65ae0405d6c1470e9552ae3f9cbcc885938');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Debbie', 'Collins', 'debbie.collins@hotmail.com', 393403180668, 'd80f1fe20419049539fc83b8970af9f25c16f0e1c6268e08146014ad5310b22f', '7a0dddf396f48d94a8b0a6a68644ccf97df083fa4469412018bf6740c70bdc036b14822b4250ee10647ec42b37740ad65cd06241a602ca047573f028f1cf551d');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Brian', 'Combs', 'brian.combs@gmail.com', 393703022819, '7ca2ca1045aaf417da0dd50310540932e181d604a35eab4229292b698823cb8d', '84a8ccce9ef6cc47bbf8297d7923fd94ec4b15d9e4d91a23fc0bc3ec357e42f5824e9b29f10747bea4cb6b90c628847727e7119382135541f4d594a148a5d917');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Howard', 'Williams', 'howard.williams@vodafone.it', 393404184370, 'aaef64c375cbbd38b474703519cd97cbf80e08d216bbe1aa52cd02c575ed4a5c', '12c10b566269816c9f14bc409f9cb3ae0c5613d2a7c903a5e69ea3a19c9c2fb79942c294554d8eb1185a8c500504da63339533b41f223c3ebcc51c637168e571');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('John', 'Williams', 'john.williams@outlook.com', 393603547787, 'ac0295a9126c2fd72fd4aa65e624feed378d6b3572b17fb6b11959ae471867c6', '92fefebb982d184c8003c3f3b2911010ca40f6b20e14173fba557123283cb76d93e544542afad25f847ab55ab944bd7a8531c63e45dff4fb5bcc7f9aa5a435bb');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Brenda', 'Dunn', 'brenda.dunn@hotmail.com', 393702741771, '9e81f2c70428d7f70f0cc99b72dd88036bd5e798c151b0118c66ece3e1841bb1', '8784ebe14f4e4091fdadf8fdc1fb63d90d18d327dd2508be24581699d97cc9b6a1ac5747f950f85e426162df2109a248e27ab2f538de65cd0da66d51c7d82cc2');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Marion', 'Martinez', 'marion.martinez@alice.it', 393308339050, '9a2d6d1b5a7f79c59fe0cdc48a74210a427ded852b0a872508153d0b617c50e0', '05963586d65ef7217b5136b03908137954019d3fb59b7a3c425747995894be0805c9b5f789e72391c7c2fad54a5e346898007a8e5b4d4ab31d7827ddb7439ca7');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Robin', 'Schartz', 'robin.schartz@hotmail.it', 393801481779, '251bd3e65067a7bbd8c1e22516c2ab36e24e838fb44c10b2eb9720808856eeb3', '8c26e9213665dab83a522deb36786ae6ad4624eaaf152397ea9bec1f4fa1901da02324dc8d351f6cc8dd0ad2201b8c028afede0962ab1c4194c42e65c55ee331');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Elizabeth', 'Leavitt', 'elizabeth.leavitt@hotmail.it', 393609824508, '1f1d1b297c95685f1b611e568ee2563b9bc39ad25ebba40091aefd1cd57416e4', '3db7b415c147d3f1dfcff1f2f7a1e7d4be0c5b3a32f7f2bba53f53eae07b200c1c884f6e88250e824a4f9ffdc9d861d8cc768f6dafa04c186a8658e4f5f00d29');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Dorothy', 'Miller', 'dorothy.miller@outlook.com', 393602658746, '724395d84a8e9a2edd70ac2081af660e65591b9104b631b47332b02974f4f3a4', '7946a3f71a9739bf0d80bf26ac14084f5f2519ba78faafc25bf9481a11eaf4dca63d94d1a9dd5d9d6c4e3553e533d48069e0ddc3366f68544bd54d0d1eed3340');

INSERT INTO users (nome, cognome, email, telefono, password_hash_(sha256), password_hash_(sha512))
VALUES ('Matthew', 'Jones', 'matthew.jones@outlook.com', 393601254564, '28066d29d7c70aa29e41e7c3133cbd3af4fc92acadfb49743517379863e8e2c2', '400c4cd841bf0a4d47f86295b74444c77a36b90bdae0fdf7c6ce362a7b715d5f5a37f0192cc66f1792b1f03f251ef758984938dd701a3f14ff1c72986168a960');