.class public Lcom/android/systemui/globalactions/util/FakeConditionChecker;
.super Ljava/lang/Object;
.source "FakeConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


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
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_CONDITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_CONDITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;-><init>(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "FakeConditionChecker"

    const-string v3, "initialized"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v3, "FakeConditionChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Fake : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v1, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method
