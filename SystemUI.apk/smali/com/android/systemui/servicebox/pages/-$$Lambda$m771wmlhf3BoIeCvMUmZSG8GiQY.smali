.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$m771wmlhf3BoIeCvMUmZSG8GiQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$m771wmlhf3BoIeCvMUmZSG8GiQY;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$m771wmlhf3BoIeCvMUmZSG8GiQY;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->updateFloatingView()V

    return-void
.end method
