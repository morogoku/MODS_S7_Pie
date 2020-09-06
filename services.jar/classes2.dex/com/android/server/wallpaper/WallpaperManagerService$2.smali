.class Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->makeColorExtractor(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/AsyncTask;
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
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;->doInBackground([Ljava/lang/Void;)[I

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .registers 6

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractColors start which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: this task is cancelled, which ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_41
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractColors end which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v0, :cond_60

    return-object v1

    :cond_60
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperHintsInArea(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I
    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    or-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/16 v2, 0x8

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    or-int/2addr v0, v2

    aget v2, p1, v3

    if-ne v2, v3, :cond_17

    const/16 v2, 0x10

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    or-int/2addr v0, v2

    nop

    const/4 v2, 0x2

    aget v2, p1, v2

    if-ne v2, v3, :cond_22

    const/16 v1, 0x20

    nop

    :cond_22
    or-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    or-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperColors;->setColorHints(I)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    invoke-static {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;II)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperColors;II)V

    :cond_51
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostExecute : which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", primaryColors = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extraHints = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
