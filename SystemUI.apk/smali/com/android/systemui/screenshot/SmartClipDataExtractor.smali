.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mWhiteWebAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "com.android.chrome"

    const-string v1, "com.sec.android.app.sbrowser"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExtractWebData(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isSupportSmartClip(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "canExtractWebData : SmartClip is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isWritingWebDataFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "canExtractWebData : Feature disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "canExtractWebData : Desktop mode enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isMultiWindowStyleAppExist(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "canExtractWebData : MultiWindow style app exists"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v2
.end method

.method private static extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 6

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v3, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v4

    return-object v4
.end method

.method public static getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v4, "getWebData : Failed to extract the SmartClip data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWebData : content Rect w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWebData : url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    move-object v1, v7

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    new-instance v5, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    invoke-static {v0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v6, "getWebData : Invalid web data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method private static isDesktopModeEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "desktopmode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isMultiWindowStyleAppExist(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v0

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMultiWindowStyleAppExist : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "isMultiWindowStyleAppExist : MODE_FREEFORM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "isMultiWindowStyleAppExist : MODE_PICTURE_IN_PICTURE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "isMultiWindowStyleAppExist : MODE_SPLIT_SCREEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static isSupportSmartClip(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidWebData url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data.mAppPkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "isValidWebData : Not valid url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v3, "isValidWebData : Not white app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v4

    :cond_5
    :goto_2
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v2, "isValidWebData : url or appPkgName is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isWritingWebDataFeatureEnabled()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_GO_TO_URL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWritingWebDataFeatureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putWebDataToContentValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "captured_url"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "captured_app"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "putWebDataToContentValues : Web data is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
