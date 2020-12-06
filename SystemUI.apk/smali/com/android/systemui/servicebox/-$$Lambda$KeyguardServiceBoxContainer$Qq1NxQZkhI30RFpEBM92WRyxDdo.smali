.class public final synthetic Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput p2, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$1:I

    iput p3, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iget v1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$1:I

    iget v2, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$2:I

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$Qq1NxQZkhI30RFpEBM92WRyxDdo;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->lambda$sendRequestRemoteViewsBroadcast$3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;IIZ)V

    return-void
.end method
