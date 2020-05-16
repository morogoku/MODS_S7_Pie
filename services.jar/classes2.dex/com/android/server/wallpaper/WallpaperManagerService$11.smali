.class Lcom/android/server/wallpaper/WallpaperManagerService$11;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$isUserChanged:Z

.field final synthetic val$wallpaperPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$wallpaperPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$isUserChanged:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 20

    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$wallpaperPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_d1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$wallpaperPath:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$wallpaperPath:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v0, "_layered"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c9

    const-string v0, "_cinematic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_c9

    :cond_38
    const-string v0, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$wallpaperPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object v5, v0

    iget-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$isUserChanged:Z

    if-eqz v0, :cond_63

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-boolean v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->val$isUserChanged:Z

    iput-boolean v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUserChanged:Z

    :cond_63
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_d0

    const/4 v7, 0x0

    move-object v8, v3

    :try_start_84
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    invoke-static {v0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "lockscreen_wallpaper_path"

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v0, v9, v3, v10}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_af} :catch_b7
    .catch Ljava/lang/NullPointerException; {:try_start_84 .. :try_end_af} :catch_b2
    .catchall {:try_start_84 .. :try_end_af} :catchall_b0

    goto :goto_bb

    :catchall_b0
    move-exception v0

    goto :goto_c2

    :catch_b2
    move-exception v0

    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_bb

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_b0

    :goto_bb
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d0

    :goto_c2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_c9
    :goto_c9
    const-string v0, "WallpaperManagerService"

    const-string v5, "The file type is preload"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    goto :goto_d8

    :cond_d1
    const-string v0, "WallpaperManagerService"

    const-string v4, "Invalid file path."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d8
    return-object v3
.end method
