.class Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxBadgeHandler"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private currentShownState:I

.field private current_badgeUserId:I

.field private current_easyModeState:Z

.field private current_knoxBadgeShownState:Z

.field private current_naviState_Hidden:Z

.field private current_rotation:I

.field private current_showWhenLockedType:Z

.field private current_windowState:I

.field private gestureHintState:Z

.field private gestureNavBarEnabled:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/UserManager;

.field private final mWm:Landroid/view/WindowManager;

.field private navigation_bar_height:I

.field private navigation_bar_height_changed:Z

.field private personaBadge:Landroid/widget/ImageView;

.field private skipComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_badgeUserId:I

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_rotation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_windowState:I

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_showWhenLockedType:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_naviState_Hidden:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_easyModeState:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureHintState:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    const-string v1, "com.samsung.android.knox.containeragent.switcher.folderlauncher2.FolderContainer"

    const-string v2, "com.samsung.android.knox.containeragent.switcher.folderlauncher2.FolderContainerLauncher"

    const-string v3, "com.samsung.knox.securefolder.foldercontainer.FolderContainer"

    const-string v4, "com.samsung.knox.securefolder.foldercontainer.FolderContainerLauncher"

    const-string v5, "com.samsung.knox.securefolder.foldercontainer.AddFilesCategoryChooserActivity"

    const-string v6, "com.samsung.knox.securefolder.foldercontainer.AddFilesActivity"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->skipComponentList:Ljava/util/List;

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->currentShownState:I

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mUm:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mWm:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public drawKnoxBadge(ILandroid/content/ComponentName;Z)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    if-eqz p2, :cond_26

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->skipComponentList:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->removeKnoxBadge()V

    return-void

    :cond_26
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "navigation_bar_gesture_while_hidden"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_39

    move v0, v4

    goto :goto_3a

    :cond_39
    move v0, v5

    :goto_3a
    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "navigation_bar_gesture_hint"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v4

    goto :goto_4e

    :cond_4d
    move v0, v5

    :goto_4e
    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureHintState:Z

    iget-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    if-eqz v0, :cond_99

    iget-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureHintState:Z

    if-eqz v0, :cond_99

    :try_start_58
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    const-string v6, "com.android.systemui"

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6, v5, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "navbar_gesture_hint_extra_area_height"

    const-string v8, "dimen"

    const-string v9, "com.android.systemui"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7c} :catch_7d

    goto :goto_98

    :catch_7d
    move-exception v0

    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    goto :goto_9b

    :cond_99
    iput v5, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    :goto_9b
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b3

    move v8, v4

    goto :goto_b4

    :cond_b3
    move v8, v5

    :goto_b4
    iget-object v9, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "easy_mode_switch"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_c4

    move v9, v4

    goto :goto_c5

    :cond_c4
    move v9, v5

    :goto_c5
    iget-boolean v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_easyModeState:Z

    if-eq v10, v9, :cond_cd

    iput-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    iput-boolean v9, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_easyModeState:Z

    :cond_cd
    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v10, :cond_ee

    iget v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_badgeUserId:I

    if-ne v10, v2, :cond_eb

    iget-boolean v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_showWhenLockedType:Z

    if-ne v10, v3, :cond_eb

    iget v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_rotation:I

    if-ne v10, v6, :cond_eb

    iget-boolean v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    if-nez v10, :cond_eb

    iget-boolean v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    if-eqz v10, :cond_ea

    iget-boolean v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureHintState:Z

    if-nez v10, :cond_ea

    goto :goto_eb

    :cond_ea
    return-void

    :cond_eb
    :goto_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->removeKnoxBadge()V

    :cond_ee
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mPm:Landroid/content/pm/PackageManager;

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v12, v5}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_121

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KnoxService: BadgeImage is null(usr:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_121
    # getter for: Lcom/android/server/pm/PersonaManagerService;->IS_TABLET_DEVICE:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4200()Z

    move-result v11

    if-nez v11, :cond_160

    if-eqz v8, :cond_160

    # invokes: Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v12

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v14, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    move-object v12, v11

    move-object/from16 v19, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v10, v13

    :cond_160
    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    if-eqz v3, :cond_17e

    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    const/16 v15, 0x96b

    const v16, 0x40138

    const/16 v17, -0x3

    move-object v12, v14

    move v13, v11

    move-object v7, v14

    move v14, v11

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_18f

    :cond_17e
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v15, 0x8e1

    const v16, 0x40138

    const/16 v17, -0x3

    move-object v12, v7

    move v13, v11

    move v14, v11

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    :goto_18f
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000

    or-int/2addr v12, v13

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    # getter for: Lcom/android/server/pm/PersonaManagerService;->IS_TABLET_DEVICE:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4200()Z

    move-result v7

    if-nez v7, :cond_1a7

    if-eqz v8, :cond_1a7

    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x53

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1ad

    :cond_1a7
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x55

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1ad
    iget-boolean v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    if-eqz v7, :cond_1b5

    iput-boolean v5, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    iput v5, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    :cond_1b5
    iget v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    if-nez v7, :cond_1c8

    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x105018c

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    :cond_1c8
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x11200ad

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "mobile_keyboard"

    invoke-static {v12, v13, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_1e6

    move v5, v4

    nop

    :cond_1e6
    if-eqz v7, :cond_22c

    if-nez v5, :cond_22c

    # getter for: Lcom/android/server/pm/PersonaManagerService;->IS_TABLET_DEVICE:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4200()Z

    move-result v12

    if-eqz v12, :cond_1fe

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_22c

    :cond_1fe
    if-ne v6, v4, :cond_20e

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_22c

    :cond_20e
    const/4 v4, 0x3

    if-ne v6, v4, :cond_21f

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_22c

    :cond_21f
    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_22c
    :goto_22c
    iput v2, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_badgeUserId:I

    iput-boolean v3, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_showWhenLockedType:Z

    iput v6, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_rotation:I

    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4400()Z

    move-result v4

    if-eqz v4, :cond_264

    const-string v4, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawKnoxBadge succeed. u"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_badgeUserId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " state(naviHidden:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_naviState_Hidden:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", knoxBadgeShown:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_264
    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    if-nez v4, :cond_270

    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_naviState_Hidden:Z

    if-nez v4, :cond_270

    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z

    if-eqz v4, :cond_278

    :cond_270
    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureHintState:Z

    if-eqz v4, :cond_27b

    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->gestureNavBarEnabled:Z

    if-eqz v4, :cond_27b

    :cond_278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->showKnoxBadge()V

    :cond_27b
    return-void
.end method

.method public hideKnoxBadge()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z

    if-eqz v0, :cond_26

    const-string v0, "PersonaManagerService"

    const-string v1, "hideKnoxBadge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    return-void
.end method

.method public naviBarWindowStateChanged(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_windowState:I

    if-eq v0, p1, :cond_6e

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_windowState:I

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_windowState:I

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_naviState_Hidden:Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    :try_start_16
    const-string v1, "PersonaManagerService"

    const-string/jumbo v2, "naviBarWindowStateChanged SHOWING knoxBadge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    goto :goto_6e

    :cond_3a
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_windowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_naviState_Hidden:Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    :try_start_4b
    const-string v1, "PersonaManagerService"

    const-string/jumbo v2, "naviBarWindowStateChanged HIDE knoxBadge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public navigationBarHeightChanged()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->navigation_bar_height_changed:Z

    return-void
.end method

.method public removeKnoxBadge()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->hideKnoxBadge()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_badgeUserId:I

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_showWhenLockedType:Z

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_rotation:I

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "removeKnoxBadge succeed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setKeyguardBadgeState(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->currentShownState:I

    if-eq v0, p1, :cond_62

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->currentShownState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :try_start_12
    const-string v1, "PersonaManagerService"

    const-string v2, "keyguard showing..hide knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    goto :goto_62

    :cond_35
    if-nez p1, :cond_62

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :try_start_40
    const-string v1, "PersonaManagerService"

    const-string v2, "keyguard is not showing..so unhide knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_62
    :goto_62
    return-void
.end method

.method public showKnoxBadge()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z

    if-nez v0, :cond_2c

    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "showKnoxBadge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->personaBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->current_knoxBadgeShownState:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method
