.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V
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
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$102(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    const-string v4, "motion"

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$102(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    const-string v4, "motion"

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$102(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {}, Landroid/app/WallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "KeyguardMotionWallpaper"

    const-string v4, "Color Code is not set, so set default color code."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "KeyguardMotionWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException mPkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "layout"

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "KeyguardMotionWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") xml name("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    const-string v5, "KeyguardMotionWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR - chosen xml name("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") resource is not exist !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v5

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$700(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "KeyguardMotionWallpaper"

    const-string v6, "XML already parsed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$602(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$702(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v2, v4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$800(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_2
    nop

    :goto_3
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "parent asyncTask cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "KeyguardMotionWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layerList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$902(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "PARSE FINISH - BITMAP LOAD START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "PARSE FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
