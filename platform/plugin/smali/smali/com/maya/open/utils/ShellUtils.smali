.class public final Lcom/maya/open/utils/ShellUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/utils/ShellUtils$CommandResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 3

    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/maya/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/maya/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_c

    .line 89
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v6, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 100
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 101
    :try_start_2
    array-length v7, p0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, p0, v8

    if-nez v9, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write([B)V

    const-string v9, "\n"

    .line 104
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 107
    invoke-virtual {v6, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_5

    .line 111
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :try_start_5
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    :try_start_6
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 117
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 119
    :cond_4
    :goto_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 120
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v9

    move-object v12, v1

    move v1, p0

    move-object p0, v9

    move-object v9, v12

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    move-object v8, v0

    goto/16 :goto_d

    :catch_1
    move-exception v8

    move-object v9, v1

    move v1, p0

    move-object p0, v8

    move-object v8, v0

    goto/16 :goto_9

    :catch_2
    move-exception v7

    move-object v8, v0

    move-object v9, v1

    move v1, p0

    move-object p0, v7

    move-object v7, v8

    goto/16 :goto_9

    :catch_3
    move-exception v1

    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    move-object v12, v1

    move v1, p0

    move-object p0, v12

    goto :goto_9

    :catch_4
    move-exception p2

    move v1, p0

    move-object p0, p2

    goto :goto_5

    :cond_5
    move-object p2, v0

    move-object v1, p2

    move-object v7, v1

    move-object v8, v7

    .line 126
    :cond_6
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v6, v3, v5

    aput-object v7, v3, v4

    aput-object v8, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_8

    .line 128
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_a

    :catchall_1
    move-exception p0

    move-object v8, v0

    goto :goto_e

    :catch_5
    move-exception p0

    :goto_5
    move-object p2, v0

    move-object v7, p2

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object v6, v0

    goto :goto_6

    :catch_6
    move-exception p0

    move-object p2, v0

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object v6, p1

    :goto_6
    move-object v8, v6

    goto :goto_e

    :catch_7
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    :goto_7
    move-object v6, p2

    move-object v7, v6

    :goto_8
    move-object v8, v7

    move-object v9, v8

    .line 124
    :goto_9
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 126
    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v6, p0, v5

    aput-object v7, p0, v4

    aput-object v8, p0, v2

    invoke-static {p0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_7

    .line 128
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_7
    move p0, v1

    move-object v1, v9

    .line 131
    :cond_8
    :goto_a
    new-instance p1, Lcom/maya/open/utils/ShellUtils$CommandResult;

    if-nez p2, :cond_9

    move-object p2, v0

    goto :goto_b

    .line 133
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_b
    if-nez v1, :cond_a

    goto :goto_c

    .line 134
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-direct {p1, p0, p2, v0}, Lcom/maya/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_4
    move-exception p0

    :goto_d
    move-object v0, v7

    .line 126
    :goto_e
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v6, p2, v5

    aput-object v0, p2, v4

    aput-object v8, p2, v2

    invoke-static {p2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p1, :cond_b

    .line 128
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 130
    :cond_b
    throw p0

    .line 90
    :cond_c
    :goto_f
    new-instance p0, Lcom/maya/open/utils/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lcom/maya/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
