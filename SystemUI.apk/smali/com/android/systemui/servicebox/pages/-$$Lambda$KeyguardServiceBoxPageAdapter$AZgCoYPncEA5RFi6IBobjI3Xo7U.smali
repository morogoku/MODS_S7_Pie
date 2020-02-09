.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private final synthetic f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;->f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;->f$1:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->lambda$refreshViews$2(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    return-void
.end method
