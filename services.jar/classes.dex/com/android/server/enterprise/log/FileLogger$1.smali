.class Lcom/android/server/enterprise/log/FileLogger$1;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger;->cleanupLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$1;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 11

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/server/enterprise/log/FileLogger;->getDayBoundaryTimestamp(J)J
    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/FileLogger;->access$500(J)J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v6, 0x69780

    cmp-long v4, v4, v6

    if-lez v4, :cond_17

    const/4 v4, 0x1

    return v4

    :cond_17
    const/4 v4, 0x0

    return v4
.end method
