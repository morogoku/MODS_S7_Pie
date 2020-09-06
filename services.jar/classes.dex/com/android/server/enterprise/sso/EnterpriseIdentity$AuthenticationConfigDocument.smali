.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private authIDProvider:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthIDProvider()Lorg/w3c/dom/Node;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getAuthIdpPackageName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private update()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->updateIDAuthenticator()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    goto :goto_22

    :catch_4
    move-exception v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_13
    move-exception v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_22
    :goto_22
    return-void
.end method

.method private updateIDAuthenticator()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_3b

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3a

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "authenticationprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iput-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    return-void

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3a
    return-void

    :cond_3b
    :goto_3b
    return-void
.end method
