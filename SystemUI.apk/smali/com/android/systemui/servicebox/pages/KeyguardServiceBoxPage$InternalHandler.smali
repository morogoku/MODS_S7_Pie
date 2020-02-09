.class public Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;
.super Landroid/os/Handler;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPrevious(Ljava/lang/Object;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-object p0
.end method
