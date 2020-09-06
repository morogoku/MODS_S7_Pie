.class Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CustomStartingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomStartingWindowData"
.end annotation


# static fields
.field private static final CUSTOM_IMAGE_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage.jpg"

.field private static final CUSTOM_IMAGE_ROTATED_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage_rotated.jpg"

.field public static final METADATA_CUSTOM_STARTING_WINDOW_IMAGE_PATH:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH"

.field public static final METADATA_CUSTOM_STARTING_WINDOW_IMAGE_PATH_QUALIFIER:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

.field public static final METADATA_CUSTOM_STARTING_WINDOW_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID"

.field public static final METADATA_CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID_FOR_MASS"

.field public static final METADATA_CUSTOM_STARTING_WINDOW_REVERSE_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

.field private static final QUALIFIER_FONT:Ljava/lang/String; = "font"

.field private static final QUALIFIER_LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowData"


# instance fields
.field private compClassName:Ljava/lang/String;

.field public customImage:Ljava/lang/String;

.field private customImageQualifier:Ljava/lang/String;

.field public isCustomImageLoaded:Z

.field private packageName:Ljava/lang/String;

.field public resIdOfDefaultLayout:I

.field public resIdOfMassLayout:I

.field public resIdOfReverseLayout:I

.field public taskUserId:I

.field final synthetic this$0:Lcom/android/server/wm/CustomStartingWindowController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CustomStartingWindowController;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->compClassName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->taskUserId:I

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->isCustomImageLoaded:Z

    iput v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    iput v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 11

    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->compClassName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->taskUserId:I

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->isCustomImageLoaded:Z

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    if-nez p2, :cond_1d

    return-void

    :cond_1d
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_28
    const-string v3, ""

    :goto_2a
    iput-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :cond_33
    const-string v3, ""

    :goto_35
    iput-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->compClassName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->taskUserId:I

    sget-boolean v3, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_74

    const-string v3, "CustomStartingWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindowData is crated, taskUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->compClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    if-eqz p3, :cond_104

    sget-boolean v3, Lcom/android/server/wm/CustomStartingWindowController;->sSupportMassCustomStartingWindow:Z

    if-eqz v3, :cond_a2

    const-string v3, "com.samsung.android.startingwindow.LAYOUT_RESID_FOR_MASS"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    sget-boolean v3, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_a2

    iget v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    if-eqz v3, :cond_a2

    const-string v3, "CustomStartingWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindowData is created, loading a mass layout resource : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    const-string v3, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    sget-boolean v3, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_ca

    iget v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-eqz v3, :cond_ca

    const-string v3, "CustomStartingWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindowData is created, loading a default layout resource : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    const-string v3, "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    sget-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_e1

    iget v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v1, :cond_e1

    const-string v1, "CustomStartingWindowData"

    const-string v3, "CustomStartingWindowData is created, supporting reverse Layout app"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v0, :cond_fd

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v0, :cond_104

    :cond_fd
    const-string v0, "CustomStartingWindowData"

    const-string v1, "CustomStartingWindowData is created, supporting custom image path app"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    return-void
.end method

.method private getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 11

    if-eqz p1, :cond_83

    const-string/jumbo v0, "qualifier"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_7b

    aget-object v4, v1, v3

    const-string v5, "locale"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_40
    const-string v5, "font"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wm/CustomStartingWindowController;->access$300(Lcom/android/server/wm/CustomStartingWindowController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_78

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_7b
    if-eqz v0, :cond_83

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v2

    :cond_83
    return-object p2
.end method


# virtual methods
.method public getCustomImage(I)Landroid/graphics/Bitmap;
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_15

    :cond_13
    const-wide/16 v2, 0x0

    :goto_15
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v4, :cond_79

    :cond_28
    new-instance v4, Ljava/io/File;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$500()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->compClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    sget-boolean v5, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v5, :cond_77

    const-string v5, "CustomStartingWindowData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CustomStartingWindow getCustomImage, file exist in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/CustomStartingWindowController;->access$500()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    move-object v0, v4

    :cond_78
    goto :goto_9d

    :cond_79
    sget-boolean v4, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v4, :cond_95

    const-string v4, "CustomStartingWindowData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CustomStartingWindow getCustomImage, file exist in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImage:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_9d
    const/4 v4, 0x0

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ac

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->getCustomImageBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v4

    :cond_ac
    if-eqz v4, :cond_12b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12b

    :try_start_b4
    new-instance v5, Landroid/graphics/BitmapFactory;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v6, :cond_e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-string v8, "CustomStartingWindowData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow getCustomImage , duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", customImageBitmap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b4 .. :try_end_e8} :catch_eb

    :cond_e8
    nop

    move-object v1, v5

    return-object v1

    :catch_eb
    move-exception v5

    sget-boolean v6, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v6, :cond_123

    const-string v6, "CustomStartingWindowData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow getCustomImage , taking bitmap from custom file is fail by OOM, just show original starting window. , totalMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", freeMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12a

    :cond_123
    const-string v6, "CustomStartingWindowData"

    const-string v7, "CustomStartingWindow getCustomImage , taking bitmap from custom file is fail by OOM"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12a
    return-object v1

    :cond_12b
    sget-boolean v5, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v5, :cond_136

    const-string v5, "CustomStartingWindowData"

    const-string v6, "CustomStartingWindow getCustomImage, file doesn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    return-object v1
.end method

.method getCustomImageBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_12

    const/4 v0, 0x3

    if-eq p3, v0, :cond_12

    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage_rotated.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    nop

    :goto_1a
    nop

    return-object v0
.end method
