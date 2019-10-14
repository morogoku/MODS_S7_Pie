.class Lcom/android/server/input/InputKeyCounter;
.super Ljava/lang/Object;
.source "InputKeyCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputKeyCounter$HwKeyCount;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SHIP_BUILD:Z

.field private static final SURVEY_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "InputKeyCounter"


# instance fields
.field private final mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->SHIP_BUILD:Z

    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->SURVEY_ENABLED:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$1;)V

    iput-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    return v0
.end method

.method private sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_a5

    :cond_a
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_4d

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    const-string v5, "app_id"

    const-string v6, "com.android.server.input"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "feature"

    const-string v6, "BKCS"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "extra"

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "value"

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_4d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v4, :cond_a4

    const-string v4, "InputKeyCounter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sendbroadcast keycount - lenght: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v1

    :goto_83
    if-ge v2, v4, :cond_a4

    aget-object v5, v1, v2

    const-string v6, "InputKeyCounter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sendbroadcast keycount - cvs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    :cond_a4
    return-void

    :cond_a5
    :goto_a5
    const-string v0, "InputKeyCounter"

    const-string v1, "No map object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getAllKeyCount()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getAllKeyCount()J

    move-result-wide v0

    return-wide v0
.end method

.method increaseCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(I)V

    return-void
.end method

.method kickOldies(Landroid/content/Context;)V
    .registers 11

    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "InputKeyCounter"

    const-string/jumbo v1, "read old data!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v0, "persist.service.bgkeycount"

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$1;)V

    :try_start_22
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_6a

    aget-object v5, v0, v4

    sget-boolean v6, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v6, :cond_44

    const-string v6, "InputKeyCounter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read old saved keycount strings = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_57

    const-string v2, "InputKeyCounter"

    const-string/jumbo v3, "throw up the data!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_57
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(II)V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_67} :catch_6b

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_6a
    goto :goto_7b

    :catch_6b
    move-exception v2

    const-string v3, "InputKeyCounter"

    const-string v4, "NumberFormatException, throw up the data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.service.bgkeycount"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    const-string/jumbo v3, "persist.service.bgkeycount"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method saveCount()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_50
    sget-boolean v2, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v2, :cond_6b

    const-string v2, "InputKeyCounter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveCount - concat data :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const-string/jumbo v2, "persist.service.bgkeycount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastKeyCount(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->clearKeyCount()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    return-void
.end method

.method surveyEnabled()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->SURVEY_ENABLED:Z

    return v0
.end method
