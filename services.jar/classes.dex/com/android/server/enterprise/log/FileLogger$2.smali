.class Lcom/android/server/enterprise/log/FileLogger$2;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$2;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    const/4 v4, 0x1

    goto :goto_1d

    :cond_16
    cmp-long v4, v2, v0

    if-lez v4, :cond_1c

    const/4 v4, -0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/log/FileLogger$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
