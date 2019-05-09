.class public final Lcom/maya/open/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


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
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 2
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/maya/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 41
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 1
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/maya/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 76
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;
    .locals 16
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 88
    move-object/from16 v1, p0

    const/4 v2, -0x1

    .line 89
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v1, :cond_a

    array-length v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 92
    :cond_0
    const/4 v4, 0x0

    .line 93
    .local v4, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 94
    .local v5, "successResult":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 95
    .local v6, "errorResult":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 96
    .local v7, "successMsg":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 97
    .local v8, "errorMsg":Ljava/lang/StringBuilder;
    move-object v9, v3

    .line 99
    .local v9, "os":Ljava/io/DataOutputStream;
    const/4 v11, 0x3

    const/4 v13, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v14, "su"

    goto :goto_0

    :cond_1
    const-string v14, "sh"

    :goto_0
    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    move-object v4, v0

    .line 100
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v0

    .line 101
    array-length v0, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v0, :cond_3

    aget-object v15, v1, v14

    .line 102
    .local v15, "command":Ljava/lang/String;
    if-nez v15, :cond_2

    .end local v15    # "command":Ljava/lang/String;
    goto :goto_2

    .line 103
    .restart local v15    # "command":Ljava/lang/String;
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 104
    const-string v3, "\n"

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 101
    .end local v15    # "command":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_3
    const-string v0, "exit\n"

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v0

    move v2, v0

    .line 110
    if-eqz p2, :cond_5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 113
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v12, "UTF-8"

    invoke-direct {v14, v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v0

    .line 114
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-direct {v10, v12, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v0

    .line 116
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "s":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 119
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 126
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v9, v0, v13

    const/4 v10, 0x1

    aput-object v5, v0, v10

    const/4 v10, 0x2

    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_6

    .line 128
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .line 126
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v9, v0, v13

    const/4 v10, 0x1

    aput-object v5, v0, v10

    const/4 v10, 0x2

    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_6

    goto :goto_5

    .line 131
    :cond_6
    :goto_6
    new-instance v0, Lcom/maya/open/utils/ShellUtils$CommandResult;

    if-nez v7, :cond_7

    .line 133
    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_7
    if-nez v8, :cond_8

    .line 134
    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_8
    invoke-direct {v0, v2, v10, v11}, Lcom/maya/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0

    .line 126
    :goto_9
    new-array v10, v11, [Ljava/io/Closeable;

    aput-object v9, v10, v13

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_9

    .line 128
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 130
    :cond_9
    throw v0

    .line 90
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "successResult":Ljava/io/BufferedReader;
    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .end local v7    # "successMsg":Ljava/lang/StringBuilder;
    .end local v8    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    :cond_a
    :goto_a
    new-instance v0, Lcom/maya/open/utils/ShellUtils$CommandResult;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4}, Lcom/maya/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
