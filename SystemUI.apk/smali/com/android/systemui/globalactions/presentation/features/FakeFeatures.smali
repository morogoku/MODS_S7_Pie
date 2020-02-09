.class public Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;
.super Ljava/lang/Object;
.source "FakeFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# static fields
.field private static final sConditionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDefaultFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mDefaultFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_FEATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_FEATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;-><init>(Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "FakeFeatures"

    const-string v3, "initialized"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "FakeFeatures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Fake : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mDefaultFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method
