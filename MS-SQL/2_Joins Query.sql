
/* INNER JOIN */
select p.name, pr.ProductReviewID, pr.Comments
from Production.Product p
inner join Production.ProductReview pr
ON p.ProductID = pr.ProductID

/* OUTER JOIN */
select p.name, pr.ProductReviewID, pr.Comments
from Production.Product p
left outer join Production.ProductReview pr
ON p.ProductID = pr.ProductID

select p.name, pr.ProductReviewID, pr.Comments
from Production.Product p
right outer join Production.ProductReview pr
ON p.ProductID = pr.ProductID


/* OUT JOIN reversed */
select p.name, pr.ProductReviewID, pr.Comments
from Production.ProductReview pr
left outer join Production.Product p
ON p.ProductID = pr.ProductID

select p.name, pr.ProductReviewID, pr.Comments
from Production.ProductReview pr
right outer join Production.Product p
ON p.ProductID = pr.ProductID