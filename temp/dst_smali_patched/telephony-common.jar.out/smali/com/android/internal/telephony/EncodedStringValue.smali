.class public Lcom/android/internal/telephony/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private mCharacterSet:I

.field private mData:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "charset"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "EncodedStringValue"

    const-string v2, "Default encoding must be supported."

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(I[B)V

    return-void
.end method

.method public static concat([Lcom/android/internal/telephony/EncodedStringValue;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # [Lcom/android/internal/telephony/EncodedStringValue;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "maxIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v1, :cond_0

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static copy(Lcom/android/internal/telephony/EncodedStringValue;)Lcom/android/internal/telephony/EncodedStringValue;
    .locals 3
    .param p0, "value"    # Lcom/android/internal/telephony/EncodedStringValue;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/EncodedStringValue;

    iget v1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    iget-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(I[B)V

    goto :goto_0
.end method

.method public static encodeStrings([Ljava/lang/String;)[Lcom/android/internal/telephony/EncodedStringValue;
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    array-length v0, p0

    .local v0, "count":I
    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/android/internal/telephony/EncodedStringValue;

    .local v1, "encodedArray":[Lcom/android/internal/telephony/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/android/internal/telephony/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "encodedArray":[Lcom/android/internal/telephony/EncodedStringValue;
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static extract(Ljava/lang/String;)[Lcom/android/internal/telephony/EncodedStringValue;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "values":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Lcom/android/internal/telephony/EncodedStringValue;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_2

    new-array v4, v1, [Lcom/android/internal/telephony/EncodedStringValue;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/telephony/EncodedStringValue;

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public appendTextString([B)V
    .locals 5
    .param p1, "textString"    # [B

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Text-string is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    if-nez v2, :cond_1

    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "newTextString":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "appendTextString: failed when write a new Text-string"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v2, v3

    .local v2, "len":I
    new-array v0, v2, [B

    .local v0, "dstBytes":[B
    iget-object v3, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/EncodedStringValue;

    iget v4, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v3, v4, v0}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EncodedStringValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to clone an EncodedStringValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCharacterSet()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .prologue
    iget v3, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget v3, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    invoke-static {v3}, Lcom/android/internal/telephony/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    const-string v5, "iso-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "_":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getTextString()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public setCharacterSet(I)V
    .locals 0
    .param p1, "charset"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    return-void
.end method

.method public setTextString([B)V
    .locals 3
    .param p1, "textString"    # [B

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/EncodedStringValue;->mData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public split(Ljava/lang/String;)[Lcom/android/internal/telephony/EncodedStringValue;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "temp":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Lcom/android/internal/telephony/EncodedStringValue;

    .local v2, "ret":[Lcom/android/internal/telephony/EncodedStringValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/EncodedStringValue;

    iget v5, p0, Lcom/android/internal/telephony/EncodedStringValue;->mCharacterSet:I

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(I[B)V

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "_":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    .end local v0    # "_":Ljava/lang/NullPointerException;
    .end local v2    # "ret":[Lcom/android/internal/telephony/EncodedStringValue;
    :cond_0
    return-object v2
.end method