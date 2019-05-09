.class Lcom/maya/open/utils/CrashUtils$1;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/CrashUtils;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/utils/CrashUtils;

.field final synthetic val$fullPath:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/maya/open/utils/CrashUtils;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/utils/CrashUtils;

    .line 93
    iput-object p1, p0, Lcom/maya/open/utils/CrashUtils$1;->this$0:Lcom/maya/open/utils/CrashUtils;

    iput-object p2, p0, Lcom/maya/open/utils/CrashUtils$1;->val$fullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/maya/open/utils/CrashUtils$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/maya/open/utils/CrashUtils$1;->val$fullPath:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v3

    .line 99
    iget-object v3, p0, Lcom/maya/open/utils/CrashUtils$1;->this$0:Lcom/maya/open/utils/CrashUtils;

    # invokes: Lcom/maya/open/utils/CrashUtils;->getCrashHead()Ljava/lang/String;
    invoke-static {v3}, Lcom/maya/open/utils/CrashUtils;->access$000(Lcom/maya/open/utils/CrashUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/maya/open/utils/CrashUtils$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 101
    iget-object v3, p0, Lcom/maya/open/utils/CrashUtils$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 102
    .local v3, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 104
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 109
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v3    # "e":Ljava/io/IOException;
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    :goto_1
    invoke-static {v1}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :goto_2
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 110
    throw v3
.end method
