.class Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;
.super Landroid/os/Handler;
.source "BackupRestoreReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/BackupRestoreReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v2, "SAVE_PATH"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "SOURCE"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "SESSION_KEY"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "SECURITY_LEVEL"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v2, "WHICH"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v8, p0

    iget-object v2, v8, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-static {v2, v15}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->access$000(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;I)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v8, p0

    move-object v2, v1

    move v3, v15

    move-object v4, v10

    move-object v5, v11

    move v6, v14

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v8, p0

    move-object v2, v1

    move v3, v15

    move-object v4, v10

    move-object v5, v11

    move v6, v14

    move-object v7, v13

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
