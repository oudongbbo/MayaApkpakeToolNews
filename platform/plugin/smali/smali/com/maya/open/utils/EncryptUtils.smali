.class public final Lcom/maya/open/utils/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final AES_Algorithm:Ljava/lang/String; = "AES"

.field public static AES_Transformation:Ljava/lang/String; = null

.field private static final DES_Algorithm:Ljava/lang/String; = "DES"

.field public static DES_Transformation:Ljava/lang/String; = null

.field private static final TripleDES_Algorithm:Ljava/lang/String; = "DESede"

.field public static TripleDES_Transformation:Ljava/lang/String;

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 572
    const-string v0, "DES/ECB/NoPadding"

    sput-object v0, Lcom/maya/open/utils/EncryptUtils;->DES_Transformation:Ljava/lang/String;

    .line 648
    const-string v0, "DESede/ECB/NoPadding"

    sput-object v0, Lcom/maya/open/utils/EncryptUtils;->TripleDES_Transformation:Ljava/lang/String;

    .line 725
    const-string v0, "AES/ECB/NoPadding"

    sput-object v0, Lcom/maya/open/utils/EncryptUtils;->AES_Transformation:Ljava/lang/String;

    .line 819
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/open/utils/EncryptUtils;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static base64Decode([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 898
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 888
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 830
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 831
    :cond_0
    array-length v1, p0

    .line 832
    .local v1, "len":I
    if-gtz v1, :cond_1

    return-object v0

    .line 833
    :cond_1
    shl-int/lit8 v0, v1, 0x1

    new-array v0, v0, [C

    .line 834
    .local v0, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 835
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/maya/open/utils/EncryptUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 836
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/maya/open/utils/EncryptUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 834
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static decrypt3DES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 715
    const-string v0, "DESede"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->TripleDES_Transformation:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptAES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 792
    const-string v0, "AES"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->AES_Transformation:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64AES([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 770
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decryptAES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64DES([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 616
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decryptDES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64_3DES([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 693
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decrypt3DES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptDES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 638
    const-string v0, "DES"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->DES_Transformation:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 704
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decrypt3DES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 781
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decryptAES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 627
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/EncryptUtils;->decryptDES([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "isEncrypt"    # Z

    .line 806
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 808
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 809
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 810
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 811
    .local v3, "random":Ljava/security/SecureRandom;
    if-eqz p4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 812
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 813
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 815
    return-object v0

    .line 806
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static encrypt3DES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 682
    const-string v0, "DESede"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->TripleDES_Transformation:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2Base64([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 660
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encrypt3DES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2HexString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 671
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encrypt3DES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 759
    const-string v0, "AES"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->AES_Transformation:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2Base64([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 737
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptAES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2HexString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 748
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptAES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 605
    const-string v0, "DES"

    sget-object v1, Lcom/maya/open/utils/EncryptUtils;->DES_Transformation:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/maya/open/utils/EncryptUtils;->desTemplate([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2Base64([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 583
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptDES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2HexString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 594
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptDES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 376
    const-string v0, "HmacMD5"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacMD5ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 365
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacMD5([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 409
    const-string v0, "HmacSHA1"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA1ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 398
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA1([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 442
    const-string v0, "HmacSHA224"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA224ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 431
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA224([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 475
    const-string v0, "HmacSHA256"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA256ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 464
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA256([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 508
    const-string v0, "HmacSHA384"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA384ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 497
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA384([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 541
    const-string v0, "HmacSHA512"

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 519
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA512ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 530
    invoke-static {p0, p1}, Lcom/maya/open/utils/EncryptUtils;->encryptHmacSHA512([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 60
    const-string v0, "MD2"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 50
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD2([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 116
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 158
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 159
    :cond_0
    move-object v1, v0

    .line 162
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 163
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 164
    .local v4, "md":Ljava/security/MessageDigest;
    new-instance v5, Ljava/security/DigestInputStream;

    invoke-direct {v5, v1, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 165
    .local v5, "digestInputStream":Ljava/security/DigestInputStream;
    const/high16 v6, 0x40000

    new-array v6, v6, [B

    .line 166
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v5, v6}, Ljava/security/DigestInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    move-object v4, v7

    .line 168
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 168
    return-object v7

    .line 173
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    nop

    .line 173
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 171
    return-object v0

    .line 173
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 174
    throw v0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 137
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 148
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 126
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 91
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "salt"    # [B

    .line 102
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 104
    .local v0, "dataSalt":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    .end local v0    # "dataSalt":[B
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encryptSHA1([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 204
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 194
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA1([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 234
    const-string v0, "SHA224"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 224
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA224([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 264
    const-string v0, "SHA256"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 254
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 294
    const-string v0, "SHA384"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 284
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA384([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 324
    const-string v0, "SHA512"

    invoke-static {p0, v0}, Lcom/maya/open/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 314
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA512([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashTemplate([BLjava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 338
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 339
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 340
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 342
    return-object v0

    .line 335
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static hex2Dec(C)I
    .locals 1
    .param p0, "hexChar"    # C

    .line 872
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 873
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 874
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 875
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 877
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static hexString2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 851
    invoke-static {p0}, Lcom/maya/open/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 852
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 853
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 855
    add-int/lit8 v0, v0, 0x1

    .line 857
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 858
    .local v1, "hexBytes":[C
    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 859
    .local v2, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 860
    shr-int/lit8 v4, v3, 0x1

    aget-char v5, v1, v3

    invoke-static {v5}, Lcom/maya/open/utils/EncryptUtils;->hex2Dec(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/maya/open/utils/EncryptUtils;->hex2Dec(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 859
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 862
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method private static hmacTemplate([B[BLjava/lang/String;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 553
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 556
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 557
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 558
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 559
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 561
    return-object v0

    .line 553
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 902
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 903
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 904
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 905
    const/4 v0, 0x0

    return v0

    .line 903
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method
