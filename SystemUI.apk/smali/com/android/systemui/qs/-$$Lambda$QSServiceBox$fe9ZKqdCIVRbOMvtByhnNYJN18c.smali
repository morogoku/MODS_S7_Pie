.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$fe9ZKqdCIVRbOMvtByhnNYJN18c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$fe9ZKqdCIVRbOMvtByhnNYJN18c;->f$0:Lcom/android/systemui/qs/QSServiceBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$fe9ZKqdCIVRbOMvtByhnNYJN18c;->f$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->lambda$updateEverything$0(Lcom/android/systemui/qs/QSServiceBox;)V

    return-void
.end method
