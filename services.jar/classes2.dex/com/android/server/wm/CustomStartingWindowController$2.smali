.class Lcom/android/server/wm/CustomStartingWindowController$2;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/CustomStartingWindowController;->restoreAllFromXmlForRequestedContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/CustomStartingWindowController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/CustomStartingWindowController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController$2;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$2;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController;->access$300(Lcom/android/server/wm/CustomStartingWindowController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3e

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAllFromXmlForRequestedContentView, xml\'s savedPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$200()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$200()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c1

    sget-boolean v2, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_64

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllFromXmlForRequestedContentView, file\'s length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_67
    if-ge v4, v2, :cond_c1

    aget-object v5, v1, v4

    sget-boolean v6, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v6, :cond_8a

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllFromXmlForRequestedContentView, starting window file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a .. :try_end_9b} :catch_a2

    nop

    iget-object v6, p0, Lcom/android/server/wm/CustomStartingWindowController$2;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    # invokes: Lcom/android/server/wm/CustomStartingWindowController;->restoreFromXmlForRequestedContentView(Ljava/io/File;)V
    invoke-static {v6, v5}, Lcom/android/server/wm/CustomStartingWindowController;->access$400(Lcom/android/server/wm/CustomStartingWindowController;Ljava/io/File;)V

    goto :goto_be

    :catch_a2
    move-exception v6

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllFromXmlForRequestedContentView, app is removed. remove xml also, file="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    nop

    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_c1
    return-void
.end method
