.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iput p2, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;->f$1:I

    check-cast p1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->lambda$refreshViews$3(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;ILcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    return-void
.end method
