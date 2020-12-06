.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    invoke-static {}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget v1, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    if-eq v0, v1, :cond_1

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged:  mCurrentFolderState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget v3, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " folderState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iput v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget v2, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x10

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget v2, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iput v1, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget v2, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCurrentWhich(I)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
