.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    return v0
.end method

.method private compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_24} :catch_42
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_24} :catch_34
    .catchall {:try_start_c .. :try_end_24} :catchall_32

    nop

    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v6

    const-string v7, "ShutdownDialog"

    const-string v8, "File close error"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return v5

    :catchall_32
    move-exception v2

    goto :goto_59

    :catch_34
    move-exception v2

    :try_start_35
    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    if-eqz v1, :cond_68

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_50

    goto :goto_4f

    :catch_42
    move-exception v2

    :try_start_43
    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_32

    if-eqz v1, :cond_68

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    :goto_4f
    goto :goto_68

    :catch_50
    move-exception v2

    const-string v3, "ShutdownDialog"

    const-string v4, "File close error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :goto_59
    if-eqz v1, :cond_67

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_67

    :catch_5f
    move-exception v3

    const-string v4, "ShutdownDialog"

    const-string v5, "File close error"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_67
    :goto_67
    throw v2

    :cond_68
    :goto_68
    const/4 v1, 0x0

    return v1
.end method

.method private disableWindowRotation(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le p1, p2, :cond_18

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1b

    :cond_18
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1b
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public checkFotaSilent()Z
    .registers 3

    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v1, "AUTO_INSTALL"

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasAnim:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public checkStart()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 8

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_55

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->disableWindowRotation(II)V

    move v4, v1

    :goto_36
    const/4 v5, 0x3

    if-ge v4, v5, :cond_54

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v5, v5, v4

    if-nez v5, :cond_51

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_54
    goto :goto_5d

    :cond_55
    const-string v0, "ShutdownDialog"

    const-string/jumbo v2, "qmglist error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v3

    if-nez v3, :cond_7d

    if-eqz v2, :cond_7d

    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->checkFotaSilent()Z

    move-result v3

    if-nez v3, :cond_7d

    const/4 v1, 0x1

    nop

    :cond_7d
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    iget-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    goto :goto_9a

    :cond_89
    if-nez v0, :cond_92

    const-string/jumbo v1, "poweroff_sound=suspend"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9a

    :cond_92
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->start()V

    :goto_9a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "POWER_OFF_ANIMATION_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    # setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method
