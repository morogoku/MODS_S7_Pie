.class final Lcom/att/iqi/GenUI46$MessageBundle;
.super Ljava/lang/Object;
.source "GenUI46.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/GenUI46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageBundle"
.end annotation


# instance fields
.field public final applicationInformation:Lcom/att/iqi/ApplicationInformation;


# direct methods
.method public constructor <init>(Lcom/att/iqi/ApplicationInformation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/GenUI46$MessageBundle;->applicationInformation:Lcom/att/iqi/ApplicationInformation;

    return-void
.end method
